//
//  ContactViewViewMidel.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.03.2024.
//

import Foundation
import Observation

@Observable final class ContactViewViewModel {
    var contactList = Person.generateContactList()
}
