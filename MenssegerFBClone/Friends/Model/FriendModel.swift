//
//  FriendModel.swift
//  MenssegerFBClone
//
//  Created by Felipe Domingos on 04/04/23.
//

import Foundation

class Message: NSObject {
    
    var text: String?
    var date: NSDate?
    var friend: Friend?
}

class Friend: NSObject {
    
    var name: String?
    var profileImage: String?
    
}
