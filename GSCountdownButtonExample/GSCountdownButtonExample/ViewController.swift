//
//  ViewController.swift
//  GSCountdownButtonExample
//
//  Created by GeSen on 2017/9/24.
//  Copyright © 2017年 Gesen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: GSCountdownButton!
    
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

