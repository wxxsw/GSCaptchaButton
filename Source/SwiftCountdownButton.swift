//
//  SwiftCountdownButton.swift
//  SwiftCountdownButtonExample
//
//  Created by Gesen on 15/6/4.
//  Copyright (c) 2015年 Gesen. All rights reserved.
//

import UIKit

class SwiftCountdownButton: UIButton {

    // MARK: Properties
    
    var maxSecond = 60
    
    private var second = 0
    private var timer: NSTimer?
    
    private var timeLabel: UILabel!
    private var normalText: String!
    private var normalTextColor: UIColor!
    private var disabledText: String!
    private var disabledTextColor: UIColor!
    
    // MARK: Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLabel()
    }
    
    deinit {
        stopCount()
    }
    
    // MARK: Setups
    
    private func setupLabel() {
        normalText = titleForState(.Normal)!
        disabledText = titleForState(.Disabled)!
        normalTextColor = titleColorForState(.Normal)!
        disabledTextColor = titleColorForState(.Disabled)!
        setTitle("", forState: .Normal)
        setTitle("", forState: .Disabled)
        timeLabel = UILabel(frame: bounds)
        timeLabel.textAlignment = .Center
        timeLabel.text = normalText
        timeLabel.font = titleLabel?.font
        timeLabel.textColor = normalTextColor
        addSubview(timeLabel)
    }
    
    // MARK: Functions
    
    func startCount() {
        second = maxSecond
        updateDisabled()
        
        if timer != nil {
            timer!.invalidate()
            timer = nil
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateTime", userInfo: nil, repeats: true)
    }
    
    func stopCount() {
        timer?.invalidate()
        timer = nil
        updateNormal()
    }
    
    @objc func updateTime() {
        if --second <= 0 {
            stopCount()
        } else {
            updateDisabled()
        }
    }
    
    // MARK: Private
    
    private func updateNormal() {
        enabled = true
        timeLabel.textColor = normalTextColor
        timeLabel.text = normalText
    }
    
    private func updateDisabled() {
        enabled = false
        timeLabel.textColor = disabledTextColor
        timeLabel.text = disabledText.stringByReplacingOccurrencesOfString("second", withString: "\(second)", options: .LiteralSearch, range: nil)
    }

}
