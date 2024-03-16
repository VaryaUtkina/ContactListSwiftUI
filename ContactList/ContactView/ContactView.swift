//
//  ContentView.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.03.2024.
//

import SwiftUI

struct ContactView: View {
    @State private var contactViewVM = ContactViewViewModel()
    
    var body: some View {
        NavigationStack {
            List(contactViewVM.contactList, id: \.self) { person in
                NavigationLink(destination: PersonDetailsView(person: person)) {
                    PersonRowView(person: person)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
