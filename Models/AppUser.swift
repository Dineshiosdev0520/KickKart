//
//  AppUser.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import Foundation

struct AppUser: Codable {
    let firstName: String
    let lastName: String
    let address: String
    let zip: String
    let city: String
    let country: String
}
