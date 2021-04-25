//
//  ImageView+Externsion.swift
//  MikerShop
//
//  Created by bruceyao on 2021/4/25.
//


import UIKit
import Kingfisher

extension UIImageView {
    ///所有商品图片 通过key 加载网络图片 ,这块需要注意下 placeholderImage ,这个必须得在主项目下的image 才能取到
    public  func setUrlImage(_ url:String ,placeholderImage:String = "placeholder",options:KingfisherOptionsInfo = [.transition(ImageTransition.fade(1.2))]) -> Void {
        self.kf.setImage(with: URL(string: url), placeholder: UIImage(named: placeholderImage), options: options)
    }
}

