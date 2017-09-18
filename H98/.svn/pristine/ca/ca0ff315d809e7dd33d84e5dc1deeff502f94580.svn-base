//
//  LYHomeViewController.swift
//  H98
//
//  Created by Jany on 17/9/18.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class LYHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.cz_random()
        
        loginView()
    }
    
    func loginView() {
        
        guard let cls = NSClassFromString(Bundle.main.namespace() + "." + "LYLoginViewController") as? UIViewController.Type else {
            return
        }
        
        let vc = cls.init()
        vc.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(vc, animated: true, completion: nil)
    }
    
    func setupUI() {
        let btn = UIButton.cz_textButton("login", fontSize: 12, normalColor:UIColor.lightGray, highlightedColor: UIColor.black)
        btn?.frame = CGRect(x: 20, y: 120, width: 40, height: 40)
        btn?.addTarget(self, action:#selector(loginView), for:.touchUpInside)
        view.addSubview(btn!)
    }
}
