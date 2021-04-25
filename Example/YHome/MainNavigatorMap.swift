//
//  MainNavigatorMap.swift
//  YHome_Example
//
//  Created by bruceyao on 2021/4/25.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import URLNavigator
import YUtilCore
import YHome

struct MainNavigatorMap {
    
    static func initialize(navigator: NavigatorType) {
        UtilCoreNavigatorMap.initialize(navigator: navigator)
        YHome.Home_router.initialize(navigator: navigator)
    }
    
}
