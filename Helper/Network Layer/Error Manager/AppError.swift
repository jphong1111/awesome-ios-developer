
//
//  AppError.swift
//  OperationQueueDemo
//
//  Created by JungpyoHong on 5/4/21.
//

import Foundation

enum AppError: Error {
    case badUrl
    case serverError
    case badResponse
    case noData
    case parseError
    case badRequest
    case genericError(String)
    case parametersNil
    case encodingFail
    case unauthorizedLocationAccess
    case copyError
    
    var errorMessage: String {
        switch self {
        case .badUrl:
            return "URL is not valid"
            
        case .serverError:
            return "Server Error"
            
        case .badResponse:
            return "Bad HTTP response"
            
        case .noData:
            return "No data found"
            
        case .parseError:
            return "Parsing Error"
            
        case .badRequest:
            return "Bad Request"
            
        case .genericError(let message):
            return message
            
        case .parametersNil:
            return "Parameters were nil."
            
        case .encodingFail:
            return "Parameter encoding fail."
        
        case .unauthorizedLocationAccess:
            return "Unauthorized Location Access"
        case .copyError:
            return "Unable to copy file"
        }
    }
}

