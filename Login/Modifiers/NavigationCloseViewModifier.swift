//
//  Modifiers.swift
//  Login
//
//  Created by Field Employee on 2/12/22.
//

import SwiftUI

struct NavigationCloseViewModifier: ViewModifier {

    @Environment(\.presentationMode) var presentationMode

    func body(content: Content) -> some View {
        content
            .toolbar {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
            }
    }
}

extension View {

    func applyClose() -> some View {
        self.modifier(NavigationCloseViewModifier())
    }
}
