//
//  UserRepository.swift
//
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation
import RxSwift

protocol UserRepository {
    func fetchUserProfile(username: String) -> Single<UserProfile>
}

class UserRepositoryImpl: UserRepository {
    func fetchUserProfile(username: String) -> Single<UserProfile> {
        // Simulating a network call with a delay
        return Single<UserProfile>.create { single in
            let delayTime = DispatchTime.now() + .seconds(2)
            DispatchQueue.global().asyncAfter(deadline: delayTime) {
                // Assuming a successful fetch
                // You can replace this with actual network call and error handling
                let userProfile = UserProfile(username: username, name: "John Doe", email: "john.doe@example.com")
                single(.success(userProfile))
            }
            return Disposables.create()
        }
    }
}
