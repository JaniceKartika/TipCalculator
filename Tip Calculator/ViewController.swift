//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Patrick Nugros on 2/11/17.
//  Copyright © 2017 Patrick Nugros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBAction func calculate(_ sender: Any) {
        if let input = billAmount.text {
            var totalAmount = 0.0
            if let value = Double(input) {
                switch segment.selectedSegmentIndex {
                case 0:
                    totalAmount = 0.1 * Double(value)
                    break
                case 1:
                    totalAmount = 0.15 * Double(value)
                    break
                default:
                    totalAmount = 0.2 * Double(value)
                }
                let tipAmount = value + totalAmount
                totalAmountLabel.text = "$ " + String(totalAmount)
                tipAmountLabel.text = "$ " + String(tipAmount)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
