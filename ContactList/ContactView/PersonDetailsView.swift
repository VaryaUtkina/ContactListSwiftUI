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
            Section {
                VStack {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                Section {
                    CustomLabel(text: person.phoneNumber, imageName: "phone")
                }
                Section {
                    CustomLabel(text: person.email, imageName: "tray")
                }
            }
        }
        .navigationTitle(person.fullName)
    }
}

struct CustomLabel: View {
    var text: String
    var imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}


#Preview {
    PersonDetailsView(person: Person.generatePerson())
}
