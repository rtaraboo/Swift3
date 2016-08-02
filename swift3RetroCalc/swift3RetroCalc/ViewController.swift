//
//  ViewController.swift
//  swift3RetroCalc
//
//  Created by Rosario Tarabocchia on 8/1/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var outputLbl: UILabel!
    var btnSound : AVAudioPlayer!
    var runningNumber = ""
    
    var leftValString = ""
    var rightValString = ""
    var result = ""
    


    enum Operation : String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Empty = "Empty"
        
    }
    
    var currentOperation = Operation.Empty
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.pathForResource("btn", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: path!)
        
        do {
            
            try btnSound = AVAudioPlayer(contentsOf: soundUrl)
            btnSound.prepareToPlay()
            
        } catch let err as NSError {
            
            print(err.debugDescription)
            
        }
    }
    
    @IBAction func numberPressed(sender: UIButton){
        
        runningNumber += "\(sender.tag)"
        outputLbl.text = runningNumber
        playSound()
    }
    
    @IBAction func onDividePressed(sender: AnyObject){
    
        processOperation(operation: .Divide)
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject){
        processOperation(operation: .Multiply)
        
    }
    @IBAction func onSubtractPressed(sender: AnyObject){
        processOperation(operation: .Subtract)
        
    }
    @IBAction func onAddPressed(sender: AnyObject){
        processOperation(operation: .Add)
        
    }
    
    @IBAction func onEqualPressed(sender: AnyObject){
        
        processOperation(operation: currentOperation)
        
    }
    

    @IBAction func clearBtnPressed(_ sender: AnyObject) {
        runningNumber = ""
        
        leftValString = ""
        rightValString = ""
        result = ""
        currentOperation = Operation.Empty
        outputLbl.text = "0.0"
        
        
    }

    func playSound() {
        
        if btnSound.isPlaying {
            
            btnSound.stop()
        }
        
        btnSound.play()
        
    }
    
    func processOperation(operation: Operation){
        
        if currentOperation != Operation.Empty {
            
            if runningNumber != "" {
                
                rightValString = runningNumber
                runningNumber = ""
                
                if currentOperation == Operation.Multiply{
                    
                    result = "\(Double(leftValString)! * Double(rightValString)!)"
                    
                } else if currentOperation == Operation.Divide {
                    
                    result = "\(Double(leftValString)! / Double(rightValString)!)"
                    
                } else if currentOperation == Operation.Subtract {
                    
                    result = "\(Double(leftValString)! - Double(rightValString)!)"
                    
                } else if currentOperation == Operation.Add {
                    
                    result = "\(Double(leftValString)! + Double(rightValString)!)"
                }
                
                leftValString = result
                outputLbl.text = result
                
            }
            
            currentOperation = operation
            
        }
        
        else {
            
            leftValString = runningNumber
            runningNumber = ""
            currentOperation = operation
            
        }
        
    }
    
    
    
    


}

