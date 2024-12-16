//
//  Category+CoreDataProperties.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var name: String?
    @NSManaged public var product: CachedProduct?
    
    var wrappedName: String {
        name ?? "Unknown Category"
    }

}

extension Category : Identifiable {

}
