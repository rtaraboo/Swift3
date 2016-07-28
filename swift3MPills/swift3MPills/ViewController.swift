//
//  ViewController.swift
//  swift3MPills
//
//  Created by Rosario Tarabocchia on 7/28/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    let states = ["Alabama",
                  "Alaska",
                  "Arizona",
                  "Arkansas",
                  "California",
                  "Colorado",
                  "Connecticut",
                  "Delaware",
                  "Florida",
                  "Georgia",
                  "Hawaii",
                  "Idaho",
                  "Illinois",
                  "Indiana",
                  "Iowa",
                  "Kansas",
                  "Kentucky",
                  "Louisiana",
                  "Maine",
                  "Maryland",
                  "Massachusetts",
                  "Michigan",
                  "Minnesota",
                  "Mississippi",
                  "Missouri",
                  "Montana",
                  "Nebraska",
                  "Nevada",
                  "New Hampshire",
                  "New Jersey",
                  "New Mexico",
                  "New York",
                  "North Carolina",
                  "North Dakota",
                  "Ohio",
                  "Oklahoma",
                  "Oregon",
                  "Pennsylvania",
                  "Rhode Island",
                  "South Carolina",
                  "South Dakota",
                  "Tennessee",
                  "Texas",
                  "Utah",
                  "Vermont",
                  "Virginia",
                  "Washington",
                  "West Virginia",
                  "Wisconsin",
                  "Wyoming"]
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    
    
    
    
    @IBOutlet weak var successImageView: UIImageView!
    
    
    
    @IBOutlet weak var countryLbl: UILabel!
    
    @IBOutlet weak var countryTxt: UITextField!
    
    @IBOutlet weak var zipCodeLbl: UILabel!
    
    
    @IBOutlet weak var zipCodeTxt: UITextField!
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        successImageView.isHidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        
        statePicker.isHidden = false
        statePickerBtn.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTxt.isHidden = true
        countryLbl.isHidden = true
        countryTxt.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        statePickerBtn.isHidden = false
        zipCodeLbl.isHidden = false
        zipCodeTxt.isHidden = false
        countryLbl.isHidden = false
        countryTxt.isHidden = false
        
    }
    
    
    
    
    

    
    @IBAction func buyNowABtn(_ sender: AnyObject) {
        
        successImageView.isHidden = false
        
        
    }
    
    
    
    
    
    
    
    
    
}

