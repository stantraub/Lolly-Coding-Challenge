//
//  UserService.swift
//  Lolly Coding Challenge
//
//  Created by Stanley Traub on 1/12/21.
//

import Firebase

struct UserService {
    static func uploadUsers(users: [[String: String]], completion: @escaping(Bool) -> Void) {
        for user in users {
            COLLECTION_USERS.addDocument(data: user)
        }
        
        completion(true)
    }
    
    static func fetchUsers(completion: @escaping([User]) -> Void) {
        COLLECTION_USERS.getDocuments { snapshot, error in
            guard let snapshot = snapshot else { return }
            let users = snapshot.documents.map({ User(dictionary: $0.data() )})
            
            completion(users)
        }
    }
}
