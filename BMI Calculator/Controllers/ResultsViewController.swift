//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Андрей Логвинов on 2/4/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var advicelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = bmiValue
        advicelabel.text = advice
        view.backgroundColor = color
        
        
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        //self.performSegue(withIdentifier: "goToCalculate", sender: self)
        self.dismiss(animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}
