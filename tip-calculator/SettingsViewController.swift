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
        
        var defaultIndex = 1;
        if (tipDefaults.defaultTipAmountIndexExists()) {
            defaultIndex = tipDefaults.getDefaultTipAmountIndex()
        } else {
            print("resetting stored default?")
            tipDefaults.setDefaultTipAmountIndex(defaultIndex)
        }
        print("Settings view using default \(defaultIndex)")
        tipControl.selectedSegmentIndex = defaultIndex
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTouchUpInside(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func onTipControlChanged(sender: AnyObject) {
        tipDefaults.setDefaultTipAmountIndex(tipControl.selectedSegmentIndex)
        // TODO: consider updating main view's index too?
    }
}
