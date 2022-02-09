//
//  LoginApp.swift
//  Login
//
//  Created by Froy on 1/24/22.
//

import SwiftUI
import Firebase

@main
struct LoginApp: App {

    @UIApplicationDelegateAdaptor (AppDelegate.self) var appDelegate
    

    var body: some Scene {
        WindowGroup {
            let viewModel = AppViewModel()
            ContentView().environmentObject(viewModel)
        }
    }
}


