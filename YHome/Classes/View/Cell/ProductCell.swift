//
//  Product_tCell.swift
//  Created by YaoChengZhen on 04/24/2021.
//  Copyright (c) 2021 YaoChengZhen. All rights reserved.
//

import UIKit
import YUtilCore


class ProductCell: UITableViewCell {
    
    @IBOutlet weak var pdname_Lb: UILabel!
    @IBOutlet weak var desc_Lb: UILabel!
    @IBOutlet weak var attr_Lb: UILabel!
    @IBOutlet weak var imageurl_ImgV: UIImageView!
    
    var item: ProductModel?{
        didSet{
            self.attr_Lb.text = item?.attr
            self.pdname_Lb.text = item?.pdname
            self.desc_Lb.text = item?.desc
            self.imageurl_ImgV.setUrlImage(item?.imageurl ?? "")
            
        }
        
    }
    override func awakeFromNib() {
        
    }
}

