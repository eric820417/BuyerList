//
//  Buyer+CoreDataProperties.swift
//  BuyerList
//
//  Created by LeungChiWai on 16/11/2016.
//  Copyright © 2016年 Eric－Leung. All rights reserved.
//

import Foundation
import CoreData


extension Buyer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Buyer> {
        return NSFetchRequest<Buyer>(entityName: "Buyer");
    }

    @NSManaged public var details: String?
    @NSManaged public var phone: String?
    @NSManaged public var name: String?
    @NSManaged public var items: NSObject?

}
