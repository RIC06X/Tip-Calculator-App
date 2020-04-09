//
//  ViewController.swift
//  Tip Calculator App
//
//  Created by Yanjie Xu on 2020/4/9.
//  Copyright © 2020 Yanjie Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipField: UILabel!
    
    @IBOutlet weak var totalField: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("hello" )
        view.endEditing(true)
    }
    
    @IBAction func calculateTips(_ sender: Any) {
        let tipPercentage = [0.1, 0.15, 0.2]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipField.text = String(format: "$%.2f", tip)
        totalField.text = String(format: "$%.2f", total)
    }
}

