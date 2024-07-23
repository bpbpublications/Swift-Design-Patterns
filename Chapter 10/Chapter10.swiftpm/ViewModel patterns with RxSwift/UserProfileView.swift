//
//  UserProfileView.swift
//
//
//  Created by Mihir Das on 19/07/24.
//

import SwiftUI
import RxSwift

struct UserProfileView: View {
    @ObservedObject var viewModel: UserProfileViewModel
    private let disposeBag = DisposeBag()
    
    var body: some View {
        VStack {
            TextField("Enter username", text: $viewModel.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Fetch Profile") {
                viewModel.fetchUserProfile.onNext(())
            }
            .padding()
            
            if viewModel.userProfile != .empty {
                Text("Name: \(viewModel.userProfile.name)")
                Text("Email: \(viewModel.userProfile.email)")
                // Display other user profile details
            }
            
            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage)
                    .foregroundColor(.red)
            }
            
            if viewModel.isLoading {
                ProgressView()
            }
        }
        .padding()
    }
}


#Preview {
    UserProfileView(viewModel: UserProfileViewModel(userRepository: UserRepositoryImpl()))
}
