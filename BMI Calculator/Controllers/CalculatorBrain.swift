//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nitish Poonia on 21/01/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String{
        let bmiTo1DecimalValue = String(format: "%.1f", bmi?.value ?? 0.0) //Nil coelsing operator
        return bmiTo1DecimalValue
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "Do not know your BMI"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.black
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
            let bmiValue = weight / (height * height)

            if bmiValue < 18.5 {
                bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            } else if bmiValue < 24.9 {
                bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
            } else {
                bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
            }
        }
    
   
}
