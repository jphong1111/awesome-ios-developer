//
//  Router.swift
//  MapDemoApp
//
//  Created by JungpyoHong on 4/25/21.
//

import Foundation

typealias NetworkRouterCompletion<T> = (Result<T, AppError>)->()

class Router<EndPoint: EndPointType>: NetworkRouter {
    private var task: URLSessionTask?
    private let session = URLSession(configuration: .default)
    
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
        task?.resume()
    }
    func cancel() {
        self.task?.cancel()
    }
    
    fileprivate func buildRequest(from route: EndPoint) throws -> URLRequest {
        
        var request = URLRequest(url: route.baseURL.appendingPathComponent(route.path),
                                 cachePolicy: .reloadIgnoringLocalAndRemoteCacheData,
                                 timeoutInterval: 10.0)
        
        request.httpMethod = route.httpMethod.rawValue
        do {
            switch route.task {
            case .request:
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            case .requestParameters(let bodyParameters,
                                    let bodyEncoding,
                                    let urlParameters):
                
                try self.configureParameters(bodyParameters: bodyParameters,
                                             bodyEncoding: bodyEncoding,
                                             urlParameters: urlParameters,
                                             request: &request)
                
            case .requestParametersAndHeaders(let bodyParameters,
                                              let bodyEncoding,
                                              let urlParameters,
                                              let additionalHeaders):
                
                self.addAdditionalHeaders(additionalHeaders, request: &request)
                try self.configureParameters(bodyParameters: bodyParameters,
                                             bodyEncoding: bodyEncoding,
                                             urlParameters: urlParameters,
                                             request: &request)
            }
            return request
        } catch {
            throw error
        }
    }
    
    private func configureParameters(bodyParameters: Parameters?,
                                     bodyEncoding: ParameterEncoding,
                                     urlParameters: Parameters?,
                                     request: inout URLRequest) throws {
        do {
            try bodyEncoding.encode(urlRequest: &request,
                                    bodyParameters: bodyParameters, urlParameters: urlParameters)
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
