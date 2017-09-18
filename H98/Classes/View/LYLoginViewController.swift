//
//  LYLoginViewController.swift
//  H98
//
//  Created by Jany on 17/9/18.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit
import SnapKit
import Alamofire

class LYLoginViewController: UIViewController {

    lazy var titleView:LYTitleView = LYTitleView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.cz_color(withHex: 0xff6852)
        
        setupUI()
    }
    
    private func setupUI() {
        
        titleView.backgroundColor = UIColor.cz_random()
        view.addSubview(titleView)
        
        titleView.snp.makeConstraints { (make) in
            make.width.equalTo(self.view.frame.size.width)
            make.height.equalTo(60)
            make.top.equalTo(0)
        }
    }
}
