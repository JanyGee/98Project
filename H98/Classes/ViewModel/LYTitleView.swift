//
//  LYTitleView.swift
//  H98
//
//  Created by Jany on 17/9/18.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit
import YYKit
import SnapKit

class LYTitleView: UIView {

    lazy var titleLabel:YYLabel = YYLabel()
    lazy var leftButton:UIButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(leftButton)
        //self.addSubview(titleLabel)
        
        leftButton = UIButton.cz_imageButton("", backgroundImageName: "")
        leftButton.backgroundColor = UIColor.cz_random()
        leftButton.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(20)
            make.bottom.equalTo(self).offset(0)
            make.width.equalTo(30)
            make.height.equalTo(40)
        }
        
//        titleLabel = YYLabel()
//        titleLabel.backgroundColor = UIColor.cz_random()
//        titleLabel.snp.makeConstraints { (make) in
//            make.centerX.equalTo(self)
//            make.centerY.equalTo(self.leftButton)
//            make.width.equalTo(80)
//            make.height.equalTo(30)
//        }
    }
}
