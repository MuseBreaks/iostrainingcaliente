//
//  ViewController.swift
//  DynamicControl
//
//  Created by abe sanchez on 8/16/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var animator:UIDynamicAnimator!
    var snapBehaviour:UISnapBehavior!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userHasTapped))
        self.view.addGestureRecognizer(tapGesture)
        animator = UIDynamicAnimator(referenceView: self.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func userHasTapped(tap:UITapGestureRecognizer){
        let touchPoint = tap.location(in: self.view)
        if (snapBehaviour != nil) {
            animator.removeBehavior(snapBehaviour)
        }
        
        snapBehaviour = UISnapBehavior(item: imageView, snapTo: touchPoint)
        snapBehaviour.damping = 3
        animator.addBehavior(snapBehaviour)
    }
    
    @IBAction func RotateImage(_ sender: UIButton) {
        let radians = atan2f(Float(imageView.transform.b), Float(imageView.transform.a));
        var degrees = radians * Float(180 / Double.pi)
        if degrees == 0{
            degrees = 180
        }
        return UIView.animate(withDuration: 2.0, animations: {
            self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat(degrees))
        })
    }
}

