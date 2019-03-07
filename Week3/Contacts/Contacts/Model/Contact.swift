//
//  ContactModel.swift
//  Contacts
//
//  Created by Алишер Халыкбаев on 28.02.2019.
//  Copyright © 2019 Алишер Халыкбаев. All rights reserved.
//

import Foundation

enum TagColor{
    case red
    case green
    case blue
    case yellow
    case orange
}

class Contact{
    
    var firstName : String
    var lastName : String
    var phone : String
    var tag : TagColor
    
    init(firstName : String, lastName : String, phone : String, tag : TagColor){
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
        self.tag = tag
    }
    
}
