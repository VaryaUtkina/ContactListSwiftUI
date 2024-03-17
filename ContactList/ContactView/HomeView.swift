//
//  HomeView.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.03.2024.
//

import SwiftUI

struct HomeView: View {
    private let contacts = Person.generateContactList()
    
    var body: some View {
        TabView {
            ContactView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            SectionedContactView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
