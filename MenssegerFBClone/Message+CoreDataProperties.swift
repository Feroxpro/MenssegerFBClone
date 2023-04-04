//
//  Message+CoreDataProperties.swift
//  MenssegerFBClone
//
//  Created by Kaue Ludovico on 04/04/23.
//
//

import Foundation
import CoreData


extension Message {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Message> {
        return NSFetchRequest<Message>(entityName: "Message")
    }

    @NSManaged public var date: Date?
    @NSManaged public var text: String?
    @NSManaged public var friend: Friend?

}

extension Message : Identifiable {

}
