//
//  AirTurnDriver.swift
//  AirTurn
//
//  Created by James Bean on 8/30/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import UIKit

public class AirTurnDriver: UIView {
    
    private let delegate: AirTurnDelegate
    
    public init(delegate: AirTurnDelegate) {
        self.delegate = delegate
        super.init(frame: CGRect.zero)
        becomeFirstResponder()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func canBecomeFirstResponder() -> Bool { return true }
    
    // TODO: add to AirTurnDelegate protocol as default implementation
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