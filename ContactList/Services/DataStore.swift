//
//  DataStore.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.03.2024.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let names = [
        "Sharon",
        "Ted",
        "Tim",
        "Allan",
        "Bruce",
        "Carl",
        "Nicola",
        "John",
        "Aaron",
        "Steven"
    ]
    let surnames = [
        "Robertson",
        "Murphy",
        "Penniwotrh",
        "Jankin",
        "Isaacson",
        "Butler",
        "Black",
        "Smith",
        "Williams",
        "Dow"
    ]
    let phoneNumbers = [
        "2342341",
        "6543564",
        "8907689",
        "4638877",
        "0927733",
        "1652299",
        "5243308",
        "7352799",
        "8462776",
        "2218613"
    ]
    let emails = [
        "eeee@mail.ru",
        "rrrr@mail.ru",
        "tttt@mail.ru",
        "yyyy@mail.ru",
        "uuuu@mail.ru",
        "iiii@mail.ru",
        "oooo@mail.ru",
        "mmmm@mail.ru",
        "ssss@mail.ru",
        "pppp@mail.ru"
    ]
    
    private init() {}
}
