//
//  Member.swift
//  Community
//
//  Created by Dan Esrey on 2016/04/10.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import Foundation

class Member {
    
    public var firstName: String
    public var lastName: String
    public var email: String
    public var streetAddress: String
    public var id: Int64
    public var password: String
    
    init(firstName: String, lastName: String, email: String, streetAddress: String, id: Int64, password: String){
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.streetAddress = streetAddress
        self.id = id
        self.password = password
    }
    
    convenience init?(dictionary: [String: Any]){
        guard let firstName = dictionary["firstName"] as? String,
            let lastName = dictionary["lastName"] as? String,
            let email = dictionary["email"] as? String,
            let streetAddress = dictionary["streetAddress"] as? String,
            let id = dictionary["id"] as? Int64,
            let password = dictionary["password"] as? String else {
                return nil
        }
        self.init(firstName: firstName, lastName: lastName, email: email, streetAddress: streetAddress, id: id, password: password)
    }
    
}
