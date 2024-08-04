//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = calculatorBrain.roundedString(v: sender.value, d:1)+"m"
     }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = calculatorBrain.roundedString(v: sender.value, d:0)+"Kg"
    }
    var calculatorBrain = CalculatorBrain()
    
    @IBAction func calculatePressed(_ sender: UIButton) {
//        let height = heightSlider.value
//        let weight = weightSlider.value
//        let bmi = weight / pow(height, 2)
//        print(String(bmi))
        
//        let secondsVC = SecondViewController()
//        secondsVC.bmiValue = String(bmi)
//        self.present(secondsVC, animated: true)
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBmi(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch(segue.identifier){
        case "goToResults":
            let destinationVC =  segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        default: return
        }
    }
}

