//
//  Person.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.03.2024.
//

import Foundation

struct Person: Hashable {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func generateContactList() -> [Person] {
        var people: [Person] = []
        let dataStore = DataStore.shared
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        let emails = dataStore.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let currentPerson = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
               people.append(currentPerson)
            }
        return people
    }
    
    static func generatePerson() -> Person {
        let dataStore = DataStore.shared
        
        let person = Person(
            name: dataStore.names.randomElement() ?? "",
            surname: dataStore.surnames.randomElement() ?? "",
            phoneNumber: dataStore.phoneNumbers.randomElement() ?? "",
            email: dataStore.emails.randomElement() ?? ""
        )
        
        return person
    }
}
