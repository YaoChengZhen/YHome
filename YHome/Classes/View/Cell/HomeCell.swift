//
//  Home_tCell.swift
//  Jacob
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import UIKit
import YUtilCore

class  HomeCell: UITableViewCell {
    lazy var pdname_Lb: UILabel = {
        let label = UILabel.init()
        return label
    }()
    lazy var imageurl_ImgV: UIImageView = {
        let label = UIImageView.init()
        return label
    }()

    lazy var attr_Lb: UILabel = {
        let label = UILabel.init()
        return label
    }()

    lazy var desc_Lb: UILabel = {
        let label = UILabel.init()
        return label
    }()
    
    var item: HomeModel?{
        didSet{
            self.attr_Lb.text = item?.attr
            self.pdname_Lb.text = item?.pdname
            self.desc_Lb.text = item?.desc
            self.imageurl_ImgV.setUrlImage(item?.imageurl ?? "")
            
        }
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(pdname_Lb)
        pdname_Lb.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(15)
            make.centerY.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        
    }
}
