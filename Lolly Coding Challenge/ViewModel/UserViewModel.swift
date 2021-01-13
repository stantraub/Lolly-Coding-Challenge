//
//  UserViewModel.swift
//  Lolly Coding Challenge
//
//  Created by Stanley Traub on 1/12/21.
//

import Foundation

struct UserViewModel {
    
    // MARK: - Properties
    
    var user: User
    
    var name: String {
        return user.name
    }
    
    var city: String {
        return user.city
    }
    
    var birthdate: String {
        let age = calcAge(birthday: user.birthdate)
        return "\(age)"
    }
    
    // MARK: - Lifecycle
    
    init(user: User) {
        self.user = user
    }
    
    // MARK: - Helpers
    
    func calcAge(birthday: String) -> Int {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "MM-dd-yyyy"
        let birthdayDate = dateFormater.date(from: birthday)
        let calendar: NSCalendar! = NSCalendar(calendarIdentifier: .gregorian)
        let now = Date()
        let calcAge = calendar.components(.year, from: birthdayDate!, to: now, options: [])
        let age = calcAge.year
        return age!
    }
}
