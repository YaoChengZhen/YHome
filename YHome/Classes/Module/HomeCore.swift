//
//  HomeCore.swift
//  Home
//
//  Created by YaoChengZhen on 04/24/2021.
//  Copyright (c) 2021 YaoChengZhen. All rights reserved.
//

import Foundation

/// 本模块的名称， 本模块的storyboard 名称必须 与模块名称相同 ,静态资源的加载回用到
let modularName = "Jacob" 

public  class  HomeModule {
    
    public static var sharedInstance :  HomeModule {
        struct Static {
            static let instance :  HomeModule =  HomeModule()
        }
        return Static.instance
    }
    
    ///storyboard
    public static var storyboard:UIStoryboard {
        get {
            
            return UIStoryboard(name: modularName, bundle: HomeModule.bundle)
        }
    }

    ///供主App调用使用 
    public static var homeVC:UIViewController {
        get {
            return  HomeVC.init()
        }
    }
    
    public static var productVc:UIViewController {
        get {
            return  ProductVC.init()
        }
    }
    
    ///供其他模块使用
    public static var bundle:Bundle? {
        get {
            return Bundle(for: HomeModule.self);
//            guard let bundleURL = Bundle(for: HomeModule.self) else {
//                return nil
//            }
//            guard let bundle = Bundle(url: bundleURL) else {
//                return nil
//            }
//            return bundle
        }
    }
}
