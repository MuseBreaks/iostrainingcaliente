//
//  View3Controller.swift
//  mercedez
//
//  Created by abe sanchez on 8/14/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit

class View3Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var imagen: UIImageView!
    
    @IBAction func Img(_ sender: UIButton) {
        imagen.isHidden = !imagen.isHidden;
    }
}
