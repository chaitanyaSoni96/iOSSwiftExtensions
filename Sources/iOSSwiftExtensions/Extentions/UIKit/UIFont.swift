//
//  UIFont.swift
//  EventApp
//
//  Created by Chaitanya Soni on 28/08/20.
//  Copyright © 2020 Chaitanya Soni. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 11.0, *)
public extension UIFont {
    class var title: UIFont {
        return UIFont.preferredFont(forTextStyle: .title3)
    }
}
