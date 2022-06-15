//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Joel Lacerda on 15/06/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiToDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimal
    }
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are overweight.", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        } else if bmiValue > 18.5 {
            bmi = BMI(value: bmiValue, advice: "You have a normal weight for your height.", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "You are underweight.", color:
                #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }
    }
        
        func getAdvice() -> String {
            return bmi?.advice ?? "Try again."
        }
        
        func getColor() -> UIColor {
            return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
