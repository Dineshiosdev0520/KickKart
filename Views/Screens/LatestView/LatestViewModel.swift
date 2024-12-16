//
//  LatestViewModel.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import SwiftUI

@MainActor final class LatestViewModel: ObservableObject {
    var columns = [GridItem(.flexible()), GridItem(.flexible())]
    var products = CoreDataManager.shared.products
}
