//
//  ViewController.swift
//  mercedez
//
//  Created by abe sanchez on 8/14/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var marca: UILabel!
    
    @IBAction func Brand(_ sender: UIButton) {
        marca.text = "Mercedes-Benz";
    }
    
    @IBOutlet weak var color: UILabel!
    
    @IBAction func Color(_ sender: Any) {
        color.text = "Rojo";
        color.textColor = UIColor.red;
    }
    
    @IBOutlet weak var imagen: UIImageView!
    
    @IBAction func ShowHide(_ sender: UIButton) {
        imagen.isHidden = !imagen.isHidden;
    }
}

