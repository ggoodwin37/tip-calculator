//
//  tipDefaults.swift
//  tip-calculator
//
//  Created by Gideon Goodwin on 8/24/15.
//  Copyright © 2015 Gideon Goodwin. All rights reserved.
//

import Foundation

class tipDefaults {
    class func defaultTipAmountIndexExists() -> Bool {
        let key = "default_tip_amount_segment"
        let defaults = NSUserDefaults.standardUserDefaults()
        return (defaults.dataForKey(key) != nil)
    }
    class func getDefaultTipAmountIndex() -> Int {
        let key = "default_tip_amount_segment"
        let defaults = NSUserDefaults.standardUserDefaults()
        return defaults.integerForKey(key)
    }
    class func setDefaultTipAmountIndex(index: Int) {
        let key = "default_tip_amount_segment"
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(index, forKey: key)
        defaults.synchronize()
    }
}