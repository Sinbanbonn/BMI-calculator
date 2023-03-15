//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit


class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var for_height: UISlider!
    
    @IBOutlet weak var for_weight: UISlider!
    
    var CalculatorBrain = calculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        print(String(format: "%.2f" , sender.value) + " - height slider value")
        heightLabel.text = String(format: "%.2f" , sender.value) + "m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f" , sender.value) + "Kg"
        print(String(format: "%.0f", sender.value) + " - weight slider value")
    }
    func BMIcalc()->Double{
        let weight = for_weight.value
        let height = for_height.value
        let BMI = weight/(height*height)
        return Double(BMI)
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVc = segue.destination as! ResultsViewController
            
            let weight = for_weight.value
            let height = for_height.value
            
            CalculatorBrain.BMIcalc(weight, height)
            destinationVc.bmiValue = CalculatorBrain.GetBMIValue()
            destinationVc.advice = CalculatorBrain.GetAdvice()
            destinationVc.color = CalculatorBrain.GetColor()
        }
    }
}

