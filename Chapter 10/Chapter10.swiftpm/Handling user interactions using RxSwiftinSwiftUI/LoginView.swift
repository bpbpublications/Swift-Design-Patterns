//
//  LoginView.swift
//  Chapter10
//
//  Created by Mihir Das on 19/07/24.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject private var viewModel = LoginViewModel()
        
        var body: some View {
            VStack(spacing: 20) {
                TextField("Username", text: $viewModel.userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Login") {
                    viewModel.loginButtonTapped.onNext(())
                }
                .padding()
                .alert(isPresented: .constant(!viewModel.errorMessage.isEmpty), content: {
                                Alert(title: Text("Error"), message: Text(viewModel.errorMessage), dismissButton: .default(Text("OK")))
                            })
                
                Spacer()
            }
            .padding()
        }

}

#Preview {
    LoginView()
}
