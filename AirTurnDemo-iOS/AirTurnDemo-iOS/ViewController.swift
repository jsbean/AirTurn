//
//  ViewController.swift
//  AirTurnDemo-iOS
//
//  Created by James Bean on 8/30/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import UIKit
import AirTurn

class ViewController: UIViewController, AirTurnDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let airTurn = AirTurnDriver(delegate: self)
        view.addSubview(airTurn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func leftPedalPressed() {
        print("left pedal pressed")
    }
    
    func rightPedalPressed() {
        print("right pedal pressed")
    }
}

