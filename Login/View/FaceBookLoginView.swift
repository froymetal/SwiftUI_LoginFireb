//
//  FaceBookLoginView.swift
//  Login
//
//  Created by Froy on 2/6/22.
//

import SwiftUI
import FBSDKLoginKit
import Firebase

struct FaceBookLoginView: UIViewRepresentable {

    func makeCoordinator() -> FaceBookLoginView.Coordinator {
        return FaceBookLoginView.Coordinator()
    }

    class Coordinator: NSObject, LoginButtonDelegate {
        func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
            if let error = error {
              print(error.localizedDescription)
              return
            }

            let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
            Auth.auth().signIn(with: credential) { (authResult, error) in
              if let error = error {
                print(error.localizedDescription)
                return
              }
                print(Localized.FacebookLogin.fbSignIn)
            }
        }

        func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
            try! Auth.auth().signOut()
        }
    }

    func makeUIView(context: UIViewRepresentableContext<FaceBookLoginView>) -> FBLoginButton {
        let view = FBLoginButton()
        view.permissions = ["email"]
        view.delegate = context.coordinator
        return view
    }

    func updateUIView(_ uiView: FBLoginButton, context: UIViewRepresentableContext<FaceBookLoginView>) { }
}

