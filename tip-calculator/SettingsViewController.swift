//
//  SettingsViewController.swift
//  tip-calculator
//
//  Created by Gideon Goodwin on 8/24/15.
//  Copyright © 2015 Gideon Goodwin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTouchUpInside(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func onTipControlChanged(sender: AnyObject) {
        let foo = tipControl.selectedSegmentIndex
        print("\(foo)")
    }
}
