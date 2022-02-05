//
//  ContentView.swift
//  Login
//
//  Created by Froy on 1/24/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AppViewModel

    var body: some View {
        NavigationView {
            if viewModel.signedIn {
                VStack {
                    Text("You are signed in")

                    Button {
                        viewModel.signOut()
                    } label: {
                        Text("Sign Out")
                            .frame(width: 200, height: 50)
                            .foregroundColor(Color.blue)
                            .padding()
                    }
                }

            } else {
                SignInView()
            }
        }
        .onAppear {
            viewModel.signedIn = viewModel.isSignedIn
        }
    }
}

struct SignInView: View {

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
                    viewModel.signIn(email: email, password: password)

                } label: {
                    Text("Sign In")
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .cornerRadius(8)
                        .background(Color.blue)
                }
                NavigationLink("Create Account", destination: SignUpView())
                    .padding()
            }
            .padding()
            Spacer()
        }
        .navigationTitle("Sign In")
    }
}

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
