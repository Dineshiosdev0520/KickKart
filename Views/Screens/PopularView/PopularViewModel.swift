//
//  PopularViewModel.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import SwiftUI
import CoreData

@MainActor final class PopularViewModel: ObservableObject {
    var rows = [GridItem(.fixed(200))]
    var columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    @Published var taskDone = false
    @Published var products = [Product]()
    @Published var shoesCategory = [Product]()
    @Published var hatsCategory = [Product]()
    @Published var weightsCategory = [Product]()
    
    func setCategories() async {
        if !taskDone {
            products = CoreDataManager.shared.products
            
            for product in products {
                if product.category.contains("Shoes") {
                    shoesCategory.append(product)
                }
                
                if product.category.contains("Hats") {
                    hatsCategory.append(product)
                }
                
                if product.category.contains("Weights") {
                    weightsCategory.append(product)
                }
            }
        }
        
        taskDone = true
    }
}
