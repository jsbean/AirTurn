//
//  AirTurnDelegate.swift
//  AirTurn
//
//  Created by James Bean on 8/30/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

/**
 Protocol defining support for AirTurn footpedal messages.
 */
public protocol AirTurnDelegate {
    
    // MARK: - Instance Methods
    
    /// Left foot-pedal pressed.
    func leftPedalPressed()
    
    /// Right foot-pedal pressed.
    func rightPedalPressed()
}
