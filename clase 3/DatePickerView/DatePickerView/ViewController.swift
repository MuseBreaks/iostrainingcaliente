//
//  ViewController.swift
//  DatePickerView
//
//  Created by abe sanchez on 8/16/17.
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
    @IBOutlet weak var selectedDate: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: datePicker.date)
        selectedDate.text = strDate
    }
}
