//
//  Jacob_router.swift
//  Jacob
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import Foundation
import URLNavigator

public struct Home_router {
    
    public static func initialize(navigator: NavigatorType) {
        
     /// 跳转到商品列表
        navigator.register("productvc".formatScheme()) { url, values ,context in
            let productVc:ProductVC = ProductVC.init()
            return productVc
        }
        
        navigator.register("homevc".formatScheme()) { url, values ,context in
            let homeVc:HomeVC = HomeVC.init()
            return homeVc
        }
 
    }
}
