//
//  UINavigationController.swift
//  BaseAppMulti
//
//  Created by Chaitanya Soni on 16/07/20.
//  Copyright © 2020 Chaitanya Soni. All rights reserved.
//

import Foundation
import UIKit

enum BarButtonItemPosition {
    case left
    case right
}

@available(iOS 11.0, *)
extension UINavigationController {
    func setTransparent() {
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
//        self.navigationBar.prefersLargeTitles = true
        self.navigationBar.isTranslucent = true
        self.view.backgroundColor = .clear
    }
    func setNavigationBarColorsAndFont() {
        self.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                        NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .headline)]
    }
    func setLogoutButton(position:BarButtonItemPosition = .left, target: UIViewController, selector: Selector)  {
        
        let logoutImage = position == .left ? UIImage(named: "logoutImage")?.rotate(radians: .pi) : UIImage(named: "logoutImage")
        let logoutButton = UIButton(type: .custom)
        
        logoutButton.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        logoutButton.tintColor = .white
        logoutButton.setImage(logoutImage, for: .normal)
        logoutButton.addTarget(target, action: selector, for: .touchUpInside)
        
        let barButtonItem = UIBarButtonItem(customView: logoutButton)
        
        barButtonItem.setSize(width: 20, height: 20)
        
        if position == .right { target.navigationItem.rightBarButtonItem = barButtonItem }
        else { target.navigationItem.leftBarButtonItem = barButtonItem }
    }
}
