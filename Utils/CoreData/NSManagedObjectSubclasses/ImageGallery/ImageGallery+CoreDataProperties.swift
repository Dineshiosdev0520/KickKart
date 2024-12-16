//
//  ImageGallery+CoreDataProperties.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import Foundation
import CoreData


extension ImageGallery {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ImageGallery> {
        return NSFetchRequest<ImageGallery>(entityName: "ImageGallery")
    }

    @NSManaged public var image: String?
    @NSManaged public var product: CachedProduct?
    
    var wrappedImage: String {
        image ?? "DefaultProductImage"
    }

}

extension ImageGallery : Identifiable {

}
