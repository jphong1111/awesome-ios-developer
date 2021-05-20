//
//  Router.swift
//  
//
//  Created by JungpyoHong on 5/11/21.
//

import Foundation

typealias NetworkRouterCompletion<T> = (Result<T, AppError>) -> Void

class Router<EndPoint: EndPointType>: NetworkRouter {
    private var task: URLSessionTask?
    private let session = URLSession(configuration: .default)
    
    func cancel() {
        self.task?.cancel()
    }
    
    func request<T: Decodable>(_ route: EndPoint, completion: @escaping NetworkRouterCompletion<T>) {
        do {
            let request = try self.buildRequest(from: route)
            task = session.dataTask(with: request) { data, response, error in
                let completionOnMain: (Result<T, AppError>) -> Void = { result in
                    DispatchQueue.main.async {
                        completion(result)
                    }
                }
                guard error == nil else {
                    completionOnMain(.failure(.serverError))
                    return
                }
                guard let response = response as? HTTPURLResponse else {
                    completionOnMain(.failure(.badResponse))
                    return
                }
                switch response.statusCode {
                case 200...299:
                    guard let unwrappedData = data else {
                        completionOnMain(.failure(.noData))
                        return
                    }
                    do {
                        let data = try JSONDecoder().decode(T.self, from: unwrappedData)
                        completionOnMain(.success(data))
                    } catch {
                        print(error)
                        completionOnMain(.failure(.parseError))
                    }
                    
                default:
                    completionOnMain(.failure(.genericError("Something went wrong")))
                }
            }
        } catch {
            completion(.failure(.badRequest))
        }
        self.task?.resume()
    }
    
    private func buildRequest(from route: EndPoint) throws -> URLRequest {
        var request = URLRequest(url: route.baseURL.appendingPathComponent(route.path),
                                 cachePolicy: .reloadIgnoringLocalAndRemoteCacheData,
                                 timeoutInterval: 10.0)
        request.httpMethod = route.httpMethod.rawValue
        do {
            switch route.task {
            case .request:
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                
            case .requestParameters(let (bodyParameters, urlParameters)):
                try self.configureParameters(bodyParameters: bodyParameters,
                                             urlParameters: urlParameters,
                                             request: &request)
                
            case .requestParametersAndHeaders(let (bodyParameters,
                                                  urlParameters,
                                                  additionalHeaders)):
                self.addAdditionalHeaders(additionalHeaders, request: &request)
                try self.configureParameters(bodyParameters: bodyParameters,
                                             urlParameters: urlParameters,
                                             request: &request)
            }
            return request
        } catch {
            throw error
        }
    }
    
    private func configureParameters(bodyParameters: Parameters?,
                                     urlParameters: Parameters?,
                                     request: inout URLRequest) throws {
        do {
            if let bodyParameters = bodyParameters {
                try JSONParameterEncoder.encode(urlRequest: &request, with: bodyParameters)
            }
            if let urlParameters = urlParameters {
                try URLParameterEncoder.encode(urlRequest: &request, with: urlParameters)
            }
        } catch {
            throw error
        }
    }
    
    private func addAdditionalHeaders(_ additionalHeaders: HTTPHeaders?, request: inout URLRequest) {
        guard let headers = additionalHeaders else { return }
        for (key, value) in headers {
            request.setValue(value, forHTTPHeaderField: key)
        }
    }
}
