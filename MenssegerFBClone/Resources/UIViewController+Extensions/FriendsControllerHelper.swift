//
//  FriendsControllerHelper.swift
//  MenssegerFBClone
//
//  Created by Kaue Ludovico on 04/04/23.
//

import UIKit
import CoreData

extension FriendsViewController {
    
    func setupData() {
        
        let delegate = UIApplication.shared.delegate as? AppDelegate
        
        if let context = delegate?.persistentContainer.viewContext {
            let mark = NSEntityDescription.insertNewObject(forEntityName: "Friend", into: context) as! Friend
            mark.name = "Mark Zuckerberg"
            mark.profileImage = "zuckprofile"
            
            let message = NSEntityDescription.insertNewObject(forEntityName: "Message", into: context) as! Message
            message.friend = mark
            message.text = "Hello my name is Mark, Nice to meet you..."
            message.date = Date()
            
            let steve = NSEntityDescription.insertNewObject(forEntityName: "Friend", into: context) as! Friend
            steve.name = "Steve Jobs"
            steve.profileImage = "steve_profile"
            
            let messageSteve = NSEntityDescription.insertNewObject(forEntityName: "Message", into: context) as! Message
            messageSteve.friend = steve
            messageSteve.text = "Apple created great iOS devices for the world..."
            messageSteve.date = Date()
            
            messages = [message, messageSteve]
        }
    }
}
