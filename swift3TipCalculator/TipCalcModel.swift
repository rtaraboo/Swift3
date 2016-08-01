//
//  TipCalcModel.swift
//  swift3TipCalculator
//
//  Created by Rosario Tarabocchia on 7/29/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import Foundation


class TipCalc {
    
    private var _billAmount = 0.0
    private var _tipPercent = 0.0
    private var _tipAmount = 0.0
    private var _totalAmount = 0.0
    private var _splitAmount = 0.0
    private var _numberOfPeople = 2
    
    var billAmount : Double {
        get {
            return _billAmount
        } set {
            
            _billAmount = newValue
        }
    }
    
    var tipPercent : Double {
        get {
            
            return _tipPercent
        } set {
            
            _tipPercent = newValue
        }
    }
    
    var numberOfPeople : Int {
        get {
            return _numberOfPeople
            
        } set {
            
            _numberOfPeople = newValue
            
        }
        
    }
    
    
    
    var splitAmount : Double {
            
            return _splitAmount

    }
    
    var tipAmount : Double {
        
        return _tipAmount
    }
    
    var totalAmount : Double {
        return _totalAmount
        
    }
    
    init(billAmount: Double, tipPercent: Double) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
        
        
    }
    
    func calculateTip() {
        _tipAmount = (billAmount * tipPercent) / 100
        _totalAmount = tipAmount + billAmount
        _splitAmount = totalAmount / Double(numberOfPeople)
    }
    
    
    
}
