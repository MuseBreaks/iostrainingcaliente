//
//  ViewController.swift
//  PageViewController
//
//  Created by abe sanchez on 8/15/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit

class ViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func newVc(viewController: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: viewController)
    }
}

