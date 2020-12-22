//
//  SOCodable.swift
//  EventApp
//
//  Created by Chaitanya Soni on 04/09/20.
//  Copyright © 2020 Chaitanya Soni. All rights reserved.
//

import Foundation

@available(iOS 11.0, *)
extension NSObject {
    var className: String {
        self.description.components(separatedBy: ["<",":",">"])[1]
    }
}

@available(iOS 11.0, *)
extension Encodable {
    
    var dictionary: [String: Any]? {
      guard let data = try? JSONEncoder().encode(self) else { return nil }
      return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
    
    var jsonData: Data? {
        let dic = self.dictionary ?? [:]
        let jsonData = try? JSONSerialization.data(withJSONObject: dic, options: .prettyPrinted)
        return jsonData
    }
    
    var stringValue: String? {
        guard
            let jsonData = self.jsonData,
            let stringValue = String(data: jsonData, encoding: .utf8)?.replacingOccurrences(of: "\n", with: "")
            else {
            return nil
        }
        
        return stringValue
    }
    
    static func fromDict<T: Codable>(_ dict: [String : Any]) -> T? {
        guard let jsonData = try? JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted),
        //                        headerCodable = try JSONSerialization.jsonObject(with: jsonData, options: []) as! Header
            let headerC = try? JSONDecoder().decode(T.self, from: jsonData) else {
                return nil
        }
        return headerC
    }
    
//    static func rawData() -> DBCache? {
//        let realm = Realm.safeInstance()
//        let cache = realm.objects(DBCache.self)
//        let existingData = cache.filter ({ $0.codableType == self.init().className }).first
//        return existingData
//    }
    
//    static func rawFromDB<T: NSObject & Codable>() -> T? {
//            
//        let rawData = self.rawData()
//        let dataFromDB: T? = self.fromDict(rawData?.jsonString.convertToDictionary() ?? [:])
//        return dataFromDB
//        
//        
//    }
    
    
    
}



