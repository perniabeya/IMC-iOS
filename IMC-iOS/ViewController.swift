//
//  ViewController.swift
//  IMC-iOS
//
//  Created by Mañanas on 8/5/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var weightLabel: UILabel!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var weight = 60
    var height = 160
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onWeighChanged(_ sender: UIStepper) {
        weight = Int(sender.value)
        weightLabel.text = "\(weight) kg"
    }
    @IBAction func onHeigthChanged(_ sender: UISlider) {
        height = Int(sender.value)
        heightLabel.text = "\(height) cm"
    }
    @IBAction func calculateBMI(_ sender: Any) {
        let result = Float(weight) / pow((Float(height) / 100.0), 2)
        
        resultLabel.text = String(format: "%.2f", result)
    }
    
}

