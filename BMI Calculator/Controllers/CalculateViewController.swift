//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

var modelBrain = ModelBrain()
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var heightSliderValue: UISlider!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var weightSliderValue: UISlider!
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        heightValue.text = String(format:"%0.2f m", sender.value)
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightValue.text = String(format:"%0.2f m", sender.value)
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSliderValue.value
        let weight = weightSliderValue.value
        modelBrain.bmiCalcuator(weight, height)
        self.performSegue(withIdentifier: "showResult", sender: self)
    }
        override func prepare(for segue: UIStoryboardSegue, sender : Any?) {
        if segue.identifier == "showResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.calculatedBmi = modelBrain.getBmiValue()
            destinationVC.adviceLabelValue = modelBrain.bmi?.advice ?? ""
            destinationVC.resultBGColor = modelBrain.bmi?.color ?? (UIColor.blue)
            }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

