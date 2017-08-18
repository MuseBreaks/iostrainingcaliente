//
//  ViewController.swift
//  VariasApps
//
//  Created by abe sanchez on 8/17/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func multiplicacion(_ sender: Any) {
        guard let var1 = txt1.text else {
            return
        }
        
        guard let var2 = txt2.text else {
            return
        }
        
        aplicaOperacion(tipoOperacion: "Multiplicacion", var1: Float(var1)!, var2: Float(var2)!)
    }
    
    @IBAction func suma(_ sender: Any) {
        guard let var1 = txt1.text else {
            return
        }
        
        guard let var2 = txt2.text else {
            return
        }
        
        aplicaOperacion(tipoOperacion: "Suma", var1: Float(var1)!, var2: Float(var2)!)
    }
    
    @IBAction func resta(_ sender: Any) {
        guard let var1 = txt1.text else {
            return
        }
        
        guard let var2 = txt2.text else {
            return
        }
        
        aplicaOperacion(tipoOperacion: "Resta", var1: Float(var1)!, var2: Float(var2)!)
    }
    
    @IBAction func division(_ sender: Any) {
        guard let var1 = txt1.text else {
            return
        }
        
        guard let var2 = txt2.text else {
            return
        }
        
        aplicaOperacion(tipoOperacion: "Division", var1: Float(var1)!, var2: Float(var2)!)
    }
    
    @IBAction func limpiar(_ sender: Any) {
        txt1.text = "";
        txt2.text = "";
        resultado.text = "0";
    }
    
    func aplicaOperacion(tipoOperacion: String, var1: Float, var2: Float) {
        var res:Float = 0
        switch tipoOperacion {
        case "Suma":
            res = var1 + var2
        case "Resta":
            res = var1 - var2
        case "Multiplicacion":
            res = var1 * var2
        case "Division":
            res = var1 / var2
        default:
            res = 0
        }
        
        resultado.text = String(res)
    }
}

