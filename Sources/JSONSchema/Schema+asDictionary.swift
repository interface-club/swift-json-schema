//
//  Schema+asDictionary.swift
//  swift-json-schema
//
//  Created by Ronith Kandallu on 10/21/24.
//

import Foundation

extension Schema {
    public func asDictionary() throws -> [String: Any] {
        let jsonData = try JSONEncoder().encode(self)
        let jsonObject = try JSONSerialization.jsonObject(with: jsonData, options: [])
        guard let dict = jsonObject as? [String: Any] else { throw EncodingError.invalidValue(jsonObject, .init(codingPath: [], debugDescription: "Got nil when converting Schema JSON to dictionary")) }
        return dict
    }
}
