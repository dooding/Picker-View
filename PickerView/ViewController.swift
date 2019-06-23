//
//  ViewController.swift
//  PickerView
//
//  Created by SWUCOMPUTER on 02/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var LabelInfo: UILabel!
    @IBOutlet var pickerCollege: UIPickerView!
    
    let yearArray: Array<String> = ["1학년", "2학년", "3학년", "4학년"]
    let deptArray: [String] = ["디지털미디어학과", "정보보호학과", "소프트웨어융합학과", "컴퓨터학과", "콘텐츠디자인학과"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>if component == 0{
            return yearArray.count
        }
        else{
            return deptArray.count
        }
    }

    @IBAction func getDateTime(_ sender: UIButton) {
 
    }
    
    
}

