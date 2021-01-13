//
//  User.swift
//  Lolly Coding Challenge
//
//  Created by Stanley Traub on 1/11/21.
//

import Foundation

struct User {
    let name: String
    let city: String
    let birthdate: String
    
    init(dictionary: [String: Any]) {
        self.name = dictionary["name"] as? String ?? ""
        self.city = dictionary["city"] as? String ?? ""
        self.birthdate = dictionary["birthdate"] as? String ?? ""
    }
}
