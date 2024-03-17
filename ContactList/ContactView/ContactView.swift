//
//  ContentView.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.03.2024.
//

import SwiftUI

struct ContactView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { person in
                NavigationLink(
                    person.fullName,
                    destination: PersonDetailsView(person: person)
                )
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(contacts: Person.generateContactList())
    }
}
