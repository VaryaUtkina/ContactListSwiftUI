//
//  PersonRowView.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.03.2024.
//

import SwiftUI

struct PersonRowView: View {
    let person: Person
    
    var body: some View {
        HStack {
            Text(person.fullName)
                    .foregroundStyle(.black)
            
            Spacer()
        }
    }
}

struct PersonRowView_Previews: PreviewProvider {
    static var previews: some View {
        PersonRowView(person: Person.generatePerson())
    }
}
