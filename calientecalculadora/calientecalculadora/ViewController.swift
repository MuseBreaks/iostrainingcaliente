//
//  ViewController.swift
//  calientecalculadora
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

    @IBOutlet weak var var1: UITextField!
    @IBOutlet weak var var2: UITextField!
    @IBOutlet weak var resultado: UILabel!
    
    @IBAction func Suma(_ sender: Any) {
        let num1 = Float(var1.text!)!;
        let num2 = Float(var2.text!)!;
        
        resultado.text = String(num1 + num2);
    }
    
    @IBAction func Resta(_ sender: UIButton) {
        let num1 = Float(var1.text!)!;
        let num2 = Float(var2.text!)!;
        
        resultado.text = String(num1 - num2);
    }
    
    @IBAction func Multiplicacion(_ sender: UIButton) {
        let num1 = Float(var1.text!)!;
        let num2 = Float(var2.text!)!;
        
        resultado.text = String(num1 * num2);
    }
    
    @IBAction func Division(_ sender: UIButton) {
        let num1 = Float(var1.text!)!;
        let num2 = Float(var2.text!)!;
        
        resultado.text = String(num1 / num2);
    }
    
}
