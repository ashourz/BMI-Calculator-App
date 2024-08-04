//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Zak Ashour on 5/26/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
