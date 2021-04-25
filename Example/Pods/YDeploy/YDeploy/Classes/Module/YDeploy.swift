//
//  AliceCore.swift
//  Alice
//
//  Created by YaoChengZhen on 04/24/2021.
//  Copyright (c) 2021 YaoChengZhen. All rights reserved.
//

import Foundation
import UIKit


/// 本模块的名称， 本模块的storyboard 名称必须 与模块名称相同 ,已经用于静态资源的加载回用到
let modularName = "YDeploy"

public  class  YDeploy {
    
    public static var sharedInstance :  YDeploy {
        struct Static {
            static let instance :  YDeploy =  YDeploy()
        }
        return Static.instance
    }
    
    ///供其他模块使用
    public static var bundle:Bundle?{
        get{
            guard let bundleURL = Bundle(for: self).url(forResource: modularName, withExtension: "bundle") else {
                return nil
            }
            guard let bundle = Bundle(url: bundleURL) else {
                return nil
            }
            return bundle
        }
    }
}

