//
//  TextField+Externsion.swift
//  MikerShop
//
//  Created by bruceyao on 2021/4/25.
//

import UIKit

extension UITextField {
    ///设置placeholder的字体颜色
    public func changePlaceholder(_ placeholder:String,placeColor:UIColor,textColor:UIColor) {
        let attributes = [
            NSAttributedString.Key.foregroundColor: placeColor]
        self.attributedPlaceholder = NSAttributedString(string: placeholder,
                                                        attributes:attributes)
        self.textColor = textColor
    }
}


