//
//  ViewController.swift
//  acelerometro
//
//  Created by abe sanchez on 8/18/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    lazy var motionManager = CMMotionManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if motionManager.isAccelerometerAvailable{
            _ = OperationQueue()
            motionManager.startAccelerometerUpdates(to: OperationQueue.main) { [weak self] (data: CMAccelerometerData?, error: Error?) in
                print("X = \(data?.acceleration.x)")
                print("Y = \(data?.acceleration.y)")
                print("Z = \(data?.acceleration.z)")
            }
        } else {
            print("No hay acelerometro")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
