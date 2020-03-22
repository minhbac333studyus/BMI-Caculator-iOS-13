//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var HighLabel: UILabel!
    @IBOutlet weak var WeightLabel: UILabel!
    @IBOutlet weak var WeightSlider: UISlider!
    @IBOutlet weak var hightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func hightSliderCHanged(_ sender: UISlider) {
        let hight = String(format: "%.2f",(sender.value))
        HighLabel.text = "\(hight)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = (Int(sender.value))
        WeightLabel.text = "\(weight)kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let high = hightSlider.value
        let weight = WeightSlider.value
        
        calculatorBrain.calculateBMI(height: (high), weight: (weight))
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "goToResult" {
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.bmiValue = calculatorBrain.getBMIvalue()
        destinationVC.advice = calculatorBrain.getAdvice()
        destinationVC.color = calculatorBrain.getColor()
        }
    }
}

