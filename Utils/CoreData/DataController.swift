//
//  DataController.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "ShopModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("error loading the database \(error.localizedDescription)")
            }
        }
    }
}
