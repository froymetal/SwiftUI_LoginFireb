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
                    // A dónde me lleva cuando se loguea en la app
                    Text(Localized.Login.signedIn)
                    // Botón para salir de la app
                    Button {
                        viewModel.signOut()
                    } label: {
                        Text(Localized.Login.signedOut)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
