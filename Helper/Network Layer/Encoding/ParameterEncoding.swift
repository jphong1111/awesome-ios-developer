//
//  ParameterEncoding.swift
//  MapDemoApp
//
//  Created by JungpyoHong on 4/25/21.
//

import Foundation

typealias Parameters = [String: Any]

protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest,
                       with parameters: Parameters) throws
}
