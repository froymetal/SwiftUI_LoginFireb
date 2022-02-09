//
//  AppDelegate.swift
//  Login
//
//  Created by Froy on 2/6/22.
//

import SwiftUI
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
            _ application: UIApplication,
            didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
        ) -> Bool {
            FirebaseApp.configure()
            // Initialize Facebook SDK
            FBSDKCoreKit.ApplicationDelegate.shared.application(
                application,
                didFinishLaunchingWithOptions: launchOptions
            )
            return true
        }
    // OLD FUNCTION WITHOUT FB LOGIN
    //    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    //        FirebaseApp.configure()
    //        return true
    //    }
}
