//
//  AppDelegate.swift
//  Login
//
//  Created by Froy on 2/6/22.
//
import UIKit
import SwiftUI
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit
import GoogleSignIn


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

            // Use Firebase library to configure APIs
//            GIDSignIn.sharedInstance.currentUser?.serverClientID  = FirebaseApp.app()?.options.clientID
//            GIDSignIn.sharedInstance.delegate = self
            return true
        }
    // OLD FUNCTION WITHOUT FB LOGIN
    //    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    //        FirebaseApp.configure()
    //        return true
    //    }

    //For Google Sign in
    @available(iOS 9.0, *)
    func application(_ application: UIApplication, open url: URL,
                     options: [UIApplication.OpenURLOptionsKey: Any])
      -> Bool {
      return GIDSignIn.sharedInstance.handle(url)
    }

//    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
//        return GIDSignIn.sharedInstance.handle(url)
//    }
//
//    // MARK: UISceneSession Lifecycle
//
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }

}
