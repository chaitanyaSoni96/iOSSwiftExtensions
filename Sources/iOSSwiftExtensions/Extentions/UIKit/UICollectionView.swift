//
//  Dictionary.swift
//  iOSSwiftExtensions
//
//  Created by Chaitanya Soni on 22/12/20.
//  Copyright © 2020 Chaitanya Soni. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 11.0, *)
public extension UICollectionView {
	func register(_ nibs: (nib: UINib, forSupplementaryViewOfKind: String, withReuseIdentifier: String)...) {
		nibs.forEach {
			nib, elementKind, reuseId in
				self.register(nib, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: reuseId)
		}
	}
	func register(_ nibs: (nib: UINib, withReuseIdentifier: String)...) {
		nibs.forEach {
			nib, reuseId in
			self.register(nib, forCellWithReuseIdentifier: reuseId)
		}
	}
}
