//
//  SIgnUpView.swift
//  Login
//
//  Created by Froy on 2/5/22.
//

import SwiftUI

struct SignUpView: View {

    @State var email: String = ""
    @State var password: String = ""
    @EnvironmentObject var viewModel: AppViewModel

    var body: some View {

        VStack {
            Image("apple_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            VStack {
                TextField("Email Adress", text: $email)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))

                TextField("Password", text: $password)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))

                Button {
                    guard !email.isEmpty, !password.isEmpty else {
                        return
                    }
                    viewModel.signUp(email: email, password: password)

                } label: {
                    Text("Crete Account")
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .cornerRadius(8)
                        .background(Color.blue)
                }
            }
            .padding()
            Spacer()
        }
        .navigationTitle("Create Account")
    }
}
