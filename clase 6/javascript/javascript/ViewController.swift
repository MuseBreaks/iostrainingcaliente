//
//  ViewController.swift
//  javascript
//
//  Created by abe sanchez on 8/19/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var webViewJs: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let localFilePath = Bundle.main.url(forResource: "particulas", withExtension: "html")
        let myRequest = URLRequest(url: localFilePath!)
        webViewJs.loadRequest(myRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
