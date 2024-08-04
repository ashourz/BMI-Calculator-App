//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Zak Ashour on 5/26/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
       
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let label = UILabel()
//        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
