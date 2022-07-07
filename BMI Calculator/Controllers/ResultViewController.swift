//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Mohamed Reyad on 10/1/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultBackgroundColor: UIImageView!
    @IBOutlet weak var resultBmi: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var calculatedBmi : String?
    var resultBGColor : UIColor?
    var adviceLabelValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultBmi.text = calculatedBmi ?? "0.0"
        self.adviceLabel.text = adviceLabelValue ?? ""
        self.resultBackgroundColor.backgroundColor = resultBGColor ?? UIColor.white
        

    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if  segue.identifier == "recalculate"{
//            var destinationVC = segue.destination as! CalculateViewController
//        }
//    }
 

}
