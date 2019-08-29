//
//  ViewController.swift
//  GSCaptchaButton
//
//  Created by Gesen on 11/12/2018.
//  Copyright (c) 2018 Gesen. All rights reserved.
//

import UIKit
import GSCaptchaButton

class ViewController: UIViewController {
    
    @IBOutlet weak var button: GSCaptchaButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tapStart(_ sender: AnyObject) {
        button.maxSecond = 30
        button.countdown = true
    }
    
    @IBAction func tapStop(_ sender: AnyObject) {
        button.countdown = false
    }

}

