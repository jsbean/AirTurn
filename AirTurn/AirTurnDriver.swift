//
//  AirTurnDriver.swift
//  AirTurn
//
//  Created by James Bean on 8/30/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import UIKit

/**
 Class that listens for AirTurn commands. 
 
 - note: The AirTurn must be connected to the device via Bluetooth.
 */
public class AirTurnDriver: UIView {
    
    private let delegate: AirTurnDelegate
    
    /**
     Create an `AirTurnDriver` with a given `delegate`.
     
     **Example:**
     
     ```
     class ViewController: UIViewController, AirTurnDelegate {
         override viewDidLoad() {
             super.viewDidLoad()
             let airTurnDriver = AirTurnDriver(delegate: self)
             view.addSubview(airTurnDriver)
         }
     
         func leftPedalPressed() { }
     
         func rightPedalPressed() { }
     }
     ```
     */
    public init(delegate: AirTurnDelegate) {
        self.delegate = delegate
        super.init(frame: CGRect.zero)
        becomeFirstResponder()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func canBecomeFirstResponder() -> Bool { return true }
    
    public override var keyCommands: [UIKeyCommand]? {
        
        let left = UIKeyCommand(
            input: UIKeyInputLeftArrow,
            modifierFlags: UIKeyModifierFlags(),
            action: #selector(leftPedalPressed)
        )
        
        let right = UIKeyCommand(
            input: UIKeyInputRightArrow,
            modifierFlags: UIKeyModifierFlags(),
            action: #selector(rightPedalPressed)
        )
        
        let up = UIKeyCommand(
            input: UIKeyInputUpArrow,
            modifierFlags: UIKeyModifierFlags(),
            action: #selector(leftPedalPressed)
        )
        
        let down = UIKeyCommand(
            input: UIKeyInputDownArrow,
            modifierFlags: UIKeyModifierFlags(),
            action: #selector(rightPedalPressed)
        )
        
        return [left, right, up, down]
    }
    
    @objc private func leftPedalPressed() {
        delegate.leftPedalPressed()
    }
    
    @objc private func rightPedalPressed() {
        delegate.rightPedalPressed()
    }
}
