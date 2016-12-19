//
//  ViewController.swift
//  TipCalculator
//
//  Created by Kyle Sit on 12/18/16.
//  Copyright © 2016 Kyle Sit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var oneTipSplitLabel: UILabel!
    @IBOutlet weak var twoTipSplitLabel: UILabel!
    @IBOutlet weak var threeTipSplitLabel: UILabel!
    @IBOutlet weak var fourTipSplitLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercentages = [0.15, 0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        let twoSplit = total / 3
        let threeSplit = total / 2
        let fourSplit = total / 4
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        oneTipSplitLabel.text = String(format: "$%.2f", twoSplit)
        twoTipSplitLabel.text = String(format: "$%.2f", threeSplit)
        threeTipSplitLabel.text = String(format: "$%.2f", fourSplit)
    }
}

