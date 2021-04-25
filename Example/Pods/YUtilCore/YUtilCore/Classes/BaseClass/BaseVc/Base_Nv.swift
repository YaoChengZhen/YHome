//
//  Base_Nv.swift
//  YUtilCore
//
//  Created by bruceyao on 2021/4/25.
//

import UIKit

/// 为了解决自定义返回按钮导致不能滑动问题
public class Base_Nv: UINavigationController {

    override public func viewDidLoad() {
        super.viewDidLoad()
        self.interactivePopGestureRecognizer?.delegate = self
    }
}

extension Base_Nv : UIGestureRecognizerDelegate {
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if gestureRecognizer == self.interactivePopGestureRecognizer {
            if self.viewControllers.count < 2 || self.visibleViewController == self.viewControllers[0] {
                return false
            }
        }
        return true
    }
}
