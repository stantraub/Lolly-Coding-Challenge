//
//  UserService.swift
//  Lolly Coding Challenge
//
//  Created by Stanley Traub on 1/12/21.
//

import FirebaseFirestore

struct UserService {
    static func uploadUsers(users: [User], completion: @escaping(Bool) -> Void) {
        for user in users {
            let data = [
                "name": user.name,
                "city": user.city,
                "birthdate": user.birthdate
            ] as [String: Any]
            
            COLLECTION_USERS.addDocument(data: data)
        }
        
        completion(true)
    }
}
