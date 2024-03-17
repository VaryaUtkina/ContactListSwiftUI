//
//  SectionedContactView.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.03.2024.
//

import SwiftUI

struct SectionedContactView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(contacts) { person in
                    Section(header: Text(person.fullName)) {
                        Label(person.phoneNumber, systemImage: "phone")
                        Label(person.email, systemImage: "tray")
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct SectionedContactView_Previews: PreviewProvider {
    static var previews: some View {
        SectionedContactView(contacts: Person.generateContactList())
    }
}
