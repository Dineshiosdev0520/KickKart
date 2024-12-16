//
//  Size+CoreDataProperties.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import Foundation
import CoreData


extension Size {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Size> {
        return NSFetchRequest<Size>(entityName: "Size")
    }

    @NSManaged public var size: Int16
    @NSManaged public var product: CachedProduct?

}

extension Size : Identifiable {

}
