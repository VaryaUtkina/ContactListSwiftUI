//
//  PersonDetailsView.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.03.2024.
//

import SwiftUI

struct PersonDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
            
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

#Preview {
    PersonDetailsView(person: Person.generateContactList().first!)
}
