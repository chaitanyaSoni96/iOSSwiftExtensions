//
//  UIAlertController.swift
//  Almaya
//
//  Created by Chaitanya Soni on 19/10/20.
//  Copyright © 2020 appic. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 11.0, *)
public extension UIAlertController {

    //var appDelegate = UIApplication.shared.delegate as! AppDelegate

	class func showAlert(titleString: String?, messageString: String? = "", actionString: String? = "OK", viewController: UIViewController?=nil, action: ((UIAlertAction) -> ())? = nil) {

        let alertController = UIAlertController(title: titleString, message: messageString, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: action))

        if (viewController != nil) {
            viewController!.present(alertController, animated: true, completion: nil)

        } else {
			let window = UIApplication.shared.delegate?.window
			let vc = window??.rootViewController?.presentedViewController ?? window??.rootViewController
            vc?.present(alertController, animated: true, completion: nil)
        }

    }

}
