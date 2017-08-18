//
//  ViewController.swift
//  ciclodevida
//
//  Created by abe sanchez on 8/17/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Se activo la func viewDidLoad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Se activo la func didReceiveMemoryWarning")

    }
    
    override func loadView() {
        super.loadView()
        print("Se activo la func loadView")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la func viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Se activo la func viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la func viewWillDissapear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activo la func viewDidDisappear")
    }

}

