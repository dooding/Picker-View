//
//  ViewController.swift
//  Week05
//
//  Created by SWUCOMPUTER on 02/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var buttonNewYear: UIButton!
    @IBOutlet var buttonMemorial: UIButton!
    @IBOutlet var buttonIndependence: UIButton!
    @IBOutlet var buttonChristmas: UIButton!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet var hiddenView: UIView!
    @IBOutlet var pickerView: UIPickerView!
    
    let yearMonthArray: Array<String> = ["1월 1일", "6월 6일", "8월 15일", "12월 25일"]
    var started: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        started = false
        hiddenView.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonHolliday(_ sender: UIButton) {
        if started{
            let index = pickerView.selectedRow(inComponent: 0)
            if((sender == buttonNewYear && index == 0)||(sender == buttonMemorial && index == 1)||(sender == buttonIndependence && index == 2)||(sender == buttonChristmas && index == 3)){
                hiddenView.isHidden = false
                activityIndicator.startAnimating()
                started = false
                activityIndicator.stopAnimating()
            }
        }
    }//스타트가 트루면 인덱스 적고 인덱스가 정답이면 뷰 나타나게 하기
    
    @IBAction func buttonStart(_ sender: UIButton) {
        started = true
        activityIndicator.startAnimating()
        hiddenView.isHidden = true
        
    }//애니메이션 시작 불 트루 히든 트루
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return yearMonthArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return yearMonthArray[row]
    }
    
}

