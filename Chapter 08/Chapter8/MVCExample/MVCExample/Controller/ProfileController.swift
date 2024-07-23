//
//  ProfileController.swift
//  MVCExample
//
//  Created by Mihir Das on 18/07/24.
//

import Foundation

class ProfileController {
    let user: User
    weak var profileView: ProfileViewController?

    init(user: User) {
        self.user = user
    }

    func bind(view: ProfileViewController) {
        self.profileView = view
    }

    func updateUserProfile() {
        guard let profileView = profileView else { return }
        profileView.updateView(with: user)
    }
}
