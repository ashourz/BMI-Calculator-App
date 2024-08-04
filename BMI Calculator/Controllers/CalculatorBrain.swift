//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Zak Ashour on 5/26/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    private var bmi: BMI? = nil
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiFloat = weight / pow(height, 2)
        bmi = BMI(value: bmiFloat, advice: getBmiString(v: bmiFloat), color: getBmiColor(v: bmiFloat))
    }
    
    func getValue() -> String {
        if let safeBmi = bmi?.value {
            return roundedString(v: safeBmi, d: 1)
        }else{
            return "BMI Error"
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "BMI Error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func roundedString(v value: Float, d decimalPlaces: Int) -> String{
        return String(format: "%.\(decimalPlaces)f", value)
    }
    
    func getBmiString(v value: Float) -> String{
        if value < 18.5 {
            return "Eat more pies!"
        }else if value < 24.9{
            return "Fit as a fiddle!"
        }else{
            return "Eat less pies!"
        }
    }
    
    func getBmiColor(v value: Float) -> UIColor{
        if value < 18.5 {
            return #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        }else if value < 24.9{
            return #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        }else{
            return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }
    }
}
