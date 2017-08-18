//
//  ViewController.swift
//  BenzAppleTv
//
//  Created by abe sanchez on 8/15/17.
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

    @IBOutlet weak var lblMarca: UILabel!
    @IBAction func CambiaMarca(_ sender: UIButton) {
        lblMarca.text = "Mercedes-Benz";
    }
    
    @IBOutlet weak var lblMarcaYColor: UILabel!
    @IBAction func CambiaMarcaYColor(_ sender: UIButton) {
        lblMarcaYColor.textColor = UIColor.blue;
        lblMarcaYColor.text = "Azul";
    }
    
    @IBOutlet weak var imgCarro: UIImageView!
    @IBAction func ToggleImagen(_ sender: UIButton) {
        imgCarro.isHidden = !imgCarro.isHidden;
    }
}

