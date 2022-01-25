//
//  LoginApp.swift
//  Login
//
//  Created by Field Employee on 1/24/22.
//

import SwiftUI

@main
struct LoginApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
