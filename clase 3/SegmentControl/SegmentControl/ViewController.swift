//
//  ViewController.swift
//  SegmentControl
//
//  Created by abe sanchez on 8/16/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var lblSegmento: UILabel!
    @IBAction func segmentChanged(_ sender: Any) {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            lblSegmento.text = "Primer segmento"
        case 1:
            lblSegmento.text = "Segundo segmento"
        default:
            lblSegmento.text = "no hay"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        segmentControl.selectedSegmentIndex = 0
        segmentChanged(segmentControl)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

