//
//  ViewController.swift
//  SwiftCountDownButton
//
//  Created by Gesen on 15/6/4.
//  Copyright (c) 2015年 Gesen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var captchaBtn: SwiftCaptchaButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapCaptcha(sender: AnyObject) {
        captchaBtn.maxSecond = 30
        captchaBtn.startCount()
    }

}

