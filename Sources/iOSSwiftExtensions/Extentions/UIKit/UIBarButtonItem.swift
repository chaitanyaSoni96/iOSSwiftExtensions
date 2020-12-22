//
//  UIBarButtonItem.swift
//  BaseAppMulti
//
//  Created by Chaitanya Soni on 16/07/20.
//  Copyright © 2020 Chaitanya Soni. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 11.0, *)
extension UIBarButtonItem {
    func setSize(width: CGFloat, height: CGFloat) {
        let widthContraint = self.customView?.widthAnchor.constraint(equalToConstant: width)
        widthContraint?.isActive = true
        let heightConstraint = self.customView?.heightAnchor.constraint(equalToConstant: height)
        heightConstraint?.isActive = true
    }
}
