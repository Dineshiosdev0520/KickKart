//
//  Order.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import Foundation

struct Order: Codable {
    let products: [ProductForPurchase]
    let user: AppUser
}
