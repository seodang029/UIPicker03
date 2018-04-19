//
//  ViewController.swift
//  UIPicker03
//
//  Created by D7703_22 on 2018. 4. 19..
//  Copyright © 2018년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var myp: UIPickerView!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    myp.delegate = self
    myp.dataSource = self
}

// UIPickerViewDataSource method
func numberOfComponents(in pickerView: UIPickerView) -> Int { return 2
}

func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    if component == 0{
        return 10
    } else {
        return 50
    }
}

// UIPickerViewDelegate method
func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    if component == 0 {
        return "1st component \(row)"
    } else {
        return "2nd component \(row)"
    }
}

func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    lbl.text = "comp = \(component) row = \(row)"
}

}
