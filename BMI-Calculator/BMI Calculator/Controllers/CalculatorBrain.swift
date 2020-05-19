//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Adilet on 4/8/20.
//  Copyright © 2020 Adilet. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMI(height : Float, weight : Float) {
        let bmiValue = weight / (height * height)
        
        switch bmiValue {
        case 0..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5..<24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a feedle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        case 25... :
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        default:
            print("ERROR IN BMI")
        }
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .black
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
}
