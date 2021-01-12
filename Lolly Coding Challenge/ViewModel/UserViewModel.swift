//
//  UserViewModel.swift
//  Lolly Coding Challenge
//
//  Created by Stanley Traub on 1/12/21.
//

import Foundation

struct UserViewModel {
    
    var user: User
    
    var name: String {
        return user.name
    }
    
    var city: String {
        return user.city
    }
    
    var birthdate: String {
        return user.birthdate
    }
    
    init(user: User) {
        self.user = user
    }
}
