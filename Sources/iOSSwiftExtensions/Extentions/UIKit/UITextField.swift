//
//  UITextField.swift
//  PaperVideoTeacher
//
//  Created by Chaitanya Soni on 18/12/20.
//  Copyright © 2020 None. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 11.0, *)
extension UITextField {
	var textOrEmpty: String { self.text ?? "" }
}
