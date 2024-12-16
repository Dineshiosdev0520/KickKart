//
//  Ext+Double.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import Foundation

extension Double {
    func formatedPrice() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "de_DE") // locale for testing purposes
        
        return formatter.string(from: NSNumber(value: self)) ?? "0 €"
    }
}
