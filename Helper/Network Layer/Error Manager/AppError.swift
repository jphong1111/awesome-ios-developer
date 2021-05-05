
//
//  AppError.swift
//  OperationQueueDemo
//
//  Created by JungpyoHong on 5/4/21.
//
import Foundation

enum AppError: Error {
    case badUrl
    case badResponse
    case serverError
    case noData
    case parseError
    case badRequest
    case genericError(String)
    
    var errorMessage: String {
        switch self {
        case .badUrl:
            return ""
        case .badResponse:
            return ""
        case .serverError:
            return ""
        case .noData:
            return ""
        case .badRequest:
            return ""
        case .parseError:
            return ""
        case .genericError(let message):
            return message
        }
    }
}
