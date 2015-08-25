//
//  tipDefaults.swift
//  tip-calculator
//
//  Created by Gideon Goodwin on 8/24/15.
//  Copyright © 2015 Gideon Goodwin. All rights reserved.
//

import Foundation

class tipDefaults {
    private class func getDefaults() -> NSUserDefaults {
        let defaults = NSUserDefaults.standardUserDefaults()
        return defaults
    }
    class func register() {
        let defaults: [String:AnyObject] = ["default_tip_amount_segment": 1]
        tipDefaults.getDefaults().registerDefaults(defaults)
    }
    class func getDefaultTipAmountIndex() -> Int {
        let key = "default_tip_amount_segment"
        return tipDefaults.getDefaults().integerForKey(key)
    }
    class func setDefaultTipAmountIndex(index: Int) {
        let key = "default_tip_amount_segment"
        let defaults = tipDefaults.getDefaults()
        defaults.setInteger(index, forKey: key)
        defaults.synchronize()
    }
}
