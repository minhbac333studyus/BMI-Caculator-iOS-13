//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Adam  on 1/20/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain {
    var bmi : Double?
    mutating func calculateBMI(height: Double    , weight: Double)  {
        bmi = weight / (height*height)
        
    }
    
    func getBMIvalue()-> String
    {
        let bmiStringType = String( format: "%.1f", bmi ?? 0.0)
        
        return bmiStringType
    }
}
