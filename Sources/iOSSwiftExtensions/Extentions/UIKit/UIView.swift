//
//  UIView.swift
//  BaseAppMulti
//
//  Created by Chaitanya Soni on 12/07/20.
//  Copyright © 2020 Chaitanya Soni. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 11.0, *)
extension UIView {

    /**
     Usage-
     subview.translatesAutoresizingMaskIntoConstraints = false
     let constraints = subview.constraintsForAnchoringTo(boundsOf: superview)
     NSLayoutConstraint.activate(constraints)
     self.view.layoutIfNeeded()
     **/
    func constraintsForAnchoringTo(boundsOf superView: UIView) -> [NSLayoutConstraint] {
        return [
            self.topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.topAnchor),
            self.leftAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.leftAnchor),
            self.bottomAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor),
            self.rightAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.rightAnchor)
        ]
    }
    
    func asCircle() {
        self.layer.cornerRadius = self.frame.width / 2;
        self.layer.masksToBounds = true
    }
    
    func dropShadow(color: UIColor = UIColor.black, offset: CGSize = CGSize(width: 1, height: 1), scale: Bool = true) {
      layer.masksToBounds = false
      layer.shadowColor = color.cgColor
      layer.shadowOpacity = 0.5
      layer.shadowOffset = CGSize(width: -1, height: 1)
      layer.shadowRadius = 1

      layer.shadowPath = UIBezierPath(rect: bounds).cgPath
      layer.shouldRasterize = true
      layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    func dropShadow(color: UIColor = UIColor.black, offset: CGSize = CGSize(width: 1, height: 1), opacity: Float = 2, radius: CGFloat = 0.8, cornerRadius: CGFloat) {
        let shadowLayer = CAShapeLayer()
        shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
        shadowLayer.fillColor = UIColor.white.cgColor

        shadowLayer.shadowColor = color.cgColor
        shadowLayer.shadowPath = shadowLayer.path
        shadowLayer.shadowOffset = offset
        shadowLayer.shadowOpacity = opacity
        shadowLayer.shadowRadius = radius

        layer.insertSublayer(shadowLayer, at: 0)
    }
    func curvedviewShadow(cornerRadius: CGFloat = 8){
        self.clipsToBounds = false
        self.layer.masksToBounds = false
        
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowOpacity = 0.35
        self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.layer.shadowRadius = 3.0
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner,
                                    .layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
