//
//  Double+Ext.swift
//  Mosaic
//
//  Created by Nguyen Van Dung on 5/27/17.
//  Copyright © 2017 Dht. All rights reserved.
//

import Foundation
import UIKit
extension Double {

    func roundUp() -> Double {
        return Darwin.round(100 * self) / 100
    }

    func cgfloat() -> CGFloat {
        return CGFloat(self)
    }
    
    func percent() -> String {
        if self == 0.0 {
            return String(0)
        }
        return String(format: "%0.2f", self) + "%"
    }

    func shortString() -> String {
        if self == 0.0 {
            return String(0)
        }
        return String(format: "%0.2f", self)
    }

    func toString() -> String {
        return String(self)
    }

    func moneyString() -> String {
        return "$" + self.formatCurrency()
    }

    func formatCurrency() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.allowsFloats = true
        formatter.maximumFractionDigits = 2
        formatter.locale = Locale(identifier: Locale.current.identifier)
        let result = formatter.string(from: self as NSNumber)
        return result ?? ""
    }
}
