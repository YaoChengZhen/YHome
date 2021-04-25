//
//  View+Externsion.swift
//  ShopApp
//
//  Created by bruceyao on 2021/4/25.
//

import UIKit

extension UIView {
    /**
     为view 设置边框
     - parameter offset:
     */
    public func changeBorderColor(_ color:UIColor,cornerRadius:CGFloat = 6.0,borderWidth:CGFloat = 1.0) {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = borderWidth
    }
    /**
     为view 设置边框
     - parameter offset:
     */
    public func changeBorderColorByHex(hex:String,cornerRadius:CGFloat = 6.0,borderWidth:CGFloat = 1.0) {
        self.changeBorderColor(UIColor(hex: hex), cornerRadius: cornerRadius, borderWidth: borderWidth)
    }
}
