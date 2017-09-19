//
//  LYRegistViewController.swift
//  H98
//
//  Created by Jany on 17/9/18.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit
import Hero

class LYRegistViewController: UIViewController {

    lazy var titleView:LYTitleView = LYTitleView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.cz_random()
        
        setupUI()

    }
    
    //MARK: UI
    func setupUI() -> Void {
        
        view.addSubview(titleView)
        
        isHeroEnabled = true
        
        titleView.heroID = "reg"
        titleView.setButtonStateAndTitle(flag: false, title: "注册")
        titleView.snp.makeConstraints { (make) in
            make.width.equalTo(self.view.frame.size.width)
            make.height.equalTo(66)
            make.top.equalTo(0)
        }
        
        weak var weakSelf = self
        
        titleView.leftButtonClickBlock = {
            weakSelf?.dismiss(animated: true, completion: nil)
        }
    }

}
