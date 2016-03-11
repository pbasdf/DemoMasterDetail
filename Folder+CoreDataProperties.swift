//
//  Folder+CoreDataProperties.swift
//  DemoMasterDetail
//
//  Created by Phil Buck on 11/03/2016.
//  Copyright © 2016 Phil Buck. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Folder {

    @NSManaged var name: String?
    @NSManaged var lists: NSSet?

}
