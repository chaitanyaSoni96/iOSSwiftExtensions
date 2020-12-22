//
//  Storyboarded.swift
//  PaperVideoTeacher
//
//  Created by Sanket Bhamare on 15/12/20.
//  Copyright © 2020 None. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
    static var storyBoardName: String { get }
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: self.storyBoardName, bundle: .main)
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! Self
    }
}
