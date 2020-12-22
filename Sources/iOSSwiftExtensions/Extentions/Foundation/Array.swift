//
//  Array.swift
//  VPM
//
//  Created by Chaitanya Soni on 28/09/20.
//  Copyright © 2020 Chaitanya Soni. All rights reserved.
//

import Foundation

@available(iOS 11.0, *)
extension Array where Element: Hashable {

    func next(item: Element) -> Element? {
        if let index = self.firstIndex(of: item), index + 1 <= self.count {
            return index + 1 == self.count ? self[0] : self[index + 1]
        }
        return nil
    }

    func prev(item: Element) -> Element? {
        if let index = self.firstIndex(of: item), index >= 0 {
            return index == 0 ? self.last : self[index - 1]
        }
        return nil
    }
}
