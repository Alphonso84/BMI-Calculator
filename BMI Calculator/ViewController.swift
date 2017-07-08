//
//  ViewController.swift
//  BMI Calculator
//
//  Created by user on 7/7/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var weightInput: UITextField!
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var BMIOutput: UITextField!
    @IBOutlet weak var categoryOutput: UILabel!
    
    @IBAction func calcBMI(_ sender: Any) {
        if let heightStr = heightInput.text {
            if heightStr == "" {
                return
            }
            else {
                if let weightStr = weightInput.text {
                    if weightStr == "" {
                        return
                    }
                    else {
                        if let heightNum = Double(heightStr) {
                            if let weightNum = Double(weightStr) {
                                let BMI: Double = (weightNum) / (heightNum * heightNum)
                                BMIOutput.text = String(BMI)
                                
                                switch BMI {
                                case 1..<15:
                                    categoryOutput.text = "Very severly underweight"
                                case 15...16:
                                    categoryOutput.text = "Severly Underweight"
                                case 16..<18.5:
                                    categoryOutput.text = "Underweight"
                                case 18.5..<25:
                                    categoryOutput.text = "Normal"
                                case 25..<30:
                                    categoryOutput.text = "Overweight"
                                case 30..<35:
                                    categoryOutput.text = "Moderately obese"
                                case 35..<40:
                                    categoryOutput.text = "Severely obese"
                                case 40..<60:
                                    categoryOutput.text = "Very severely obese"
                                default:
                                    return
                                }
                        }
                    }
                }
            }
            }
        }}
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

