//
//  Constants.swift
//  Lolly Coding Challenge
//
//  Created by Stanley Traub on 1/12/21.
//

import FirebaseFirestore

let COLLECTION_USERS = Firestore.firestore().collection("users")

let USER_DATA: [[String: String]] = [
    ["name": "Liam", "city": "New York", "birthdate": "12-12-1995"],
    ["name": "Emma", "city": "California", "birthdate": "09-20-1997"],
    ["name": "Ava", "city": "Georgia", "birthdate": "11-15-1990"],
    ["name": "Noah", "city": "Texas", "birthdate": "05-05-1994"],
    ["name": "Oliver", "city": "Florida", "birthdate": "03-26-1988"],
    ["name": "William", "city": "Alaska", "birthdate": "06-19-1991"]
]
