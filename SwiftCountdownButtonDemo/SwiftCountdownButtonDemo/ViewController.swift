//
//  ViewController.swift
//  SwiftCountdownButtonDemo
//
//  Created by 森 on 15/6/4.
//  Copyright (c) 2015年 Gesen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countdownBtn: SwiftCountdownButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapCountdown(sender: AnyObject) {
        countdownBtn.maxSecond = 30
        countdownBtn.countdown = true
    }

}

