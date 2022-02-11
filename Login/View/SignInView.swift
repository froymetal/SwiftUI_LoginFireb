//
//  SignInView.swift
//  Login
//
//  Created by Froy on 2/5/22.
//

import SwiftUI

struct SignInView: View {

    @State var email: String = ""
    @State var password: String = ""
    @EnvironmentObject var viewModel: AppViewModel

    var body: some View {

        VStack {
            Image("flame")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            VStack {
                TextField(Localized.SignIn.email, text: $email)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))

                SecureField(Localized.SignIn.pass, text: $password)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))

                Button {
                    guard !email.isEmpty, !password.isEmpty else {
                        return
                    }
                    viewModel.signIn(email: email, password: password)

                } label: {
                    Text(Localized.SignIn.signEmail)
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .cornerRadius(8)
                        .background(Color.blue)
                }
                FaceBookLoginView().frame(width: 180, height: 50,alignment: .center).padding(10)
                
                NavigationLink(Localized.SignIn.create, destination: SignUpView())
                    .padding()

            }
            .padding()
            Spacer()
        }
        .navigationTitle(Localized.SignIn.title)
    }
}
