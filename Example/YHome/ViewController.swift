//
//  ViewController.swift
//  YHome
//
//  Created by YaoChengZhen on 04/24/2021.
//  Copyright (c) 2021 YaoChengZhen. All rights reserved.
//

import UIKit
import YHome
import URLNavigator
class ViewController: UIViewController {
    let navigator = Navigator()
    @IBAction func touchBtn(_ sender: UIButton) {
//        let vc = Homv.init();
        let vc = YHome.HomeModule.homeVC
        self.navigationController?.pushViewController(vc, animated: true)
        YHome.Home_router.initialize(navigator: navigator)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

