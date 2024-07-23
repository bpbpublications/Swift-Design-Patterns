//
//  LoginView.swift
//  Chapter11
//
//  Created by Mihir Das on 19/07/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                if isLoggedIn {
                    Text("Welcome, \(username)!")
                        .accessibilityIdentifier("WelcomeLabel")
                } else {
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .accessibilityIdentifier("UsernameTextField")

                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .accessibilityIdentifier("PasswordTextField")

                    Button(action: {
                        if username == "exampleuser" && password == "password123" {
                            isLoggedIn = true
                        }
                    }) {
                        Text("Login")
                    }
                    .padding()
                    .accessibilityIdentifier("SubmitButton")
                }
            }
            .navigationTitle("Login Screen")
        }
    }
}

#Preview {
    LoginView()
}
