
import UIKit
struct CalculatorBrain {
    var bmi : BMI?
    func getBMIvalue()-> String
    {
        let bmiStringType = String( format: "%.1f", bmi?.value ?? 0.0)
        return bmiStringType
    }
    mutating func calculateBMI(height: Float    , weight: Float)  {
        let  bmiValue = weight / (height*height)
        if bmiValue < 18.5{
            bmi = BMI(value: (bmiValue), advice: "Eat more pieces", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: (bmiValue), advice: "Fit as a fiddle", color:#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }
        else{
            bmi = BMI(value: (bmiValue), advice: "Eat less pieces", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
