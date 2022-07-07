//
//  Calculator Brain.swift
//  BMI Calculator
//
//  Created by Mohamed Reyad on 10/2/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit
struct ModelBrain{
//    var height, weight
    
    var bmi : BMI?
    
    mutating func bmiCalcuator(_ weight: Float,_ height: Float) {
    
        let tempBmi = weight/pow(height,2)
        switch tempBmi {
        case 0..<18.5 :
            bmi = BMI(value: tempBmi, advice: "Eat More Pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        case 18.5..<24.9 :
            bmi = BMI(value: tempBmi, advice: "Fit as Fidder!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        case 24.9... :
            bmi = BMI(value: tempBmi, advice: "Eat Less Pies!" , color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        default:
            bmi = BMI(value: 0.0, advice: "Nil BMI", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        }
        print(bmi?.value ?? 0.0)
    }
    func getBmiValue() -> String {
        var bmiValue = "0.0"
        bmiValue = String(format: "%0.0f", bmi?.value ?? 0.0)
        return bmiValue
    }
//    func getAdvice() -> String{
//        let advice : String
//
//        return advice
//    }
//    func getColor() -> UIColor{
//        let color : UIColor
//
//        return color
//    }
//    func getHeight(_ height : Float) -> String{
//
//    return
//    }
//    func getWeight() -> String{
//
//    return
//}
//
//}
}
