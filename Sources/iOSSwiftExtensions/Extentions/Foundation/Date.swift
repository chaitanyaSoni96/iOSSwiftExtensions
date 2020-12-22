//
//  Date.swift
//  Extensions
//
//  Created by Chaitanya Soni on 19/11/20.
//  Copyright © 2020 Chaitanya Soni. All rights reserved.
//

import Foundation


@available(iOS 11.0, *)
public extension Date {
	
	func stringWithFormat(format: String) -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.locale = .init(identifier: "en")
		dateFormatter.dateFormat = format
		return dateFormatter.string(from: self)
	}
	
}
