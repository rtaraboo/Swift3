//
//  ViewController.swift
//  swift3TipCalculator
//
//  Created by Rosario Tarabocchia on 7/29/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - @IBOutlets

    @IBOutlet weak var billAmountInput: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var splitAmountLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    
    // MARK: - @Properties
    
    var tipsyCalc = TipCalc(billAmount: 0, tipPercent: 0)
    
    
    // MARK: - Initialize Views
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billAmountInput.delegate = self
        
       
    }

    // MARK: - @IBActions
    
    @IBAction func billAmountChanged(_ sender: AnyObject) {
        
        calcTip()
    }
    
    @IBAction func splitSliderValue(_ sender: AnyObject) {
        
        let splitValue = Int(splitSlider.value)
        
        tipsyCalc.numberOfPeople = splitValue
        
        splitLabel.text = String(format: "Split \(Int(splitValue))")
        
        
        calcTip()
        
    }
    
    
    @IBAction func tipValue(_ sender: AnyObject) {
        
        let tipValue : Int = Int(tipSlider.value * 100)
        
        tipPercentLabel.text = String(format: "Tip %i%%", tipValue)
        
        print("Getting here")
        
        calcTip()
        
        print("Getting here 1")
        
    }
    
    // MARK: - Functions
    
    func calcTip(){
        let wholeTipPercent = Int(tipSlider.value * 100)
        print("Whole Tip Percent \(wholeTipPercent)")
        tipsyCalc.tipPercent = Double(wholeTipPercent)
        print(tipsyCalc.tipPercent)
        print("Not getting here?")
        print(tipSlider.value)
        tipsyCalc.billAmount = ((billAmountInput.text)! as NSString).doubleValue
        
        tipsyCalc.calculateTip()
        updateUI()
        
    }
    
    func updateUI(){
        
        tipAmountLabel.text = String(format: "$%0.2f", tipsyCalc.tipAmount)
        totalAmountLabel.text = String(format: "$%0.2f", tipsyCalc.totalAmount)
        splitAmountLabel.text = String(format:  "$%0.2f", tipsyCalc.splitAmount)
    }
    
    func textFieldShouldReturn(){
        
        print("Resign!")
        billAmountInput.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textFieldShouldReturn()
    }

    
    
    



}

