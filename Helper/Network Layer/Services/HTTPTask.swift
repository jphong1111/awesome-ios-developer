//
//  HTTPTask.swift
//  MapDemoApp
//
//  Created by JungpyoHong on 4/25/21.
//

import Foundation

typealias HTTPHeaders = [String: String]

enum HTTPTask {
    case request
    case requestParameters((bodyParameters: Parameters?, urlParameters: Parameters?))
    case requestParametersAndHeaders((bodyParameters: Parameters?,
                                     urlParameters: Parameters?,
                                     additionHeaders: HTTPHeaders?))
}
