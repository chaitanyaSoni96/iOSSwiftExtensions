//
//  Data.swift
//  BaseAppMulti
//
//  Created by Chaitanya Soni on 12/07/20.
//  Copyright © 2020 Chaitanya Soni. All rights reserved.
//

import Foundation

extension Data {
    func pruned(dropFirstSpaceChar shouldDropFirst: Bool = false) -> Data? {
        let data = self
        var responseString = String(data: data, encoding: .utf8) ?? ""
        if shouldDropFirst && responseString.first == " " {
            responseString = String(responseString.dropFirst())
        }
        let prunedData = responseString.data(using: .utf8)
        return prunedData
    }
}
