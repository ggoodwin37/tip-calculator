//
//  ViewController.swift
//  tip-calculator
//
//  Created by Gideon Goodwin on 8/24/15.
//  Copyright © 2015 Gideon Goodwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tipControl.selectedSegmentIndex = tipDefaults.getDefaultTipAmountIndex()
        self.onEditingChanged(self)
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercentages = [0.18, 0.2, 0.22]
        let billAmount = (billAmountTextField.text! as NSString).doubleValue
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        tipLabel.text = String(format: "$%.2f", tip);
        totalLabel.text = String(format: "$%.2f", total);
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}
