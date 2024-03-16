//
//  ContactListApp.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.03.2024.
//

import SwiftUI

@main
struct ContactListApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}

struct ContactListApp_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
