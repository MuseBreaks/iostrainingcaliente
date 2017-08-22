//
//  ViewController.swift
//  appfinal
//
//  Created by abe sanchez on 8/19/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var webJS: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let filePath = Bundle.main.url(forResource: "particulas", withExtension: "html") else {
            return
        }
        
        let request = URLRequest(url: filePath)
        webJS.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
