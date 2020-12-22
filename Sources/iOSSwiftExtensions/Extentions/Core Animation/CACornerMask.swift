//
//  CACornerMask.swift
//  VPM
//
//  Created by Chaitanya Soni on 02/10/20.
//  Copyright © 2020 appic. All rights reserved.
//

import Foundation
import UIKit
/*public struct CACornerMask : OptionSet {

    public init(rawValue: UInt)

    
    public static var layerMinXMinYCorner: CACornerMask { get }

    public static var layerMaxXMinYCorner: CACornerMask { get }

    public static var layerMinXMaxYCorner: CACornerMask { get }

    public static var layerMaxXMaxYCorner: CACornerMask { get }
}*/
extension CACornerMask: OptionSet {
    public static var topLeft: CACornerMask     = .layerMinXMinYCorner//{ get }
    public static var topRight: CACornerMask    = .layerMaxXMinYCorner //{ get }
    public static var bottomLeft: CACornerMask  = .layerMinXMaxYCorner //{ get }
    public static var bottomRight: CACornerMask = .layerMaxXMaxYCorner //{ get }
}
