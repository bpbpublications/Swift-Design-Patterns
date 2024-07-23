//
//  UserProfileViewModel.swift
//
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation
import RxSwift

class UserProfileViewModel: ObservableObject {
    // Input
    @Published var username = ""
    @Published var userProfile: UserProfile = .empty
    let usernameSubject = BehaviorSubject<String>(value: "")
    let fetchUserProfile = PublishSubject<Void>()
    
    // Output
    private let userProfileOb: Observable<UserProfile>
    @Published var isLoading: Bool = false
    @Published var errorMessage: String = ""
    
    private let userRepository: UserRepository
    private let disposeBag = DisposeBag()
    
    init(userRepository: UserRepository) {
        self.userRepository = userRepository
        
        userProfileOb = fetchUserProfile
            .withLatestFrom(usernameSubject)
            .flatMapLatest { username in
                return userRepository.fetchUserProfile(username: username)
                    .catchAndReturn(UserProfile.empty)
                    .asObservable()
                    .startWith(UserProfile.loading)
            }
            .share()
        
         userProfileOb
            .map { $0 == .loading }
            .subscribe(on: MainScheduler.instance)
            .subscribe(onNext: { [weak self] loading in
                self?.isLoading = loading
            }).disposed(by: disposeBag)
        
       userProfileOb
            .map { $0.errorMessage ?? "" }
            .subscribe(on: MainScheduler.instance)
            .subscribe(onNext: { [weak self] message in
                self?.errorMessage = message
            }).disposed(by: disposeBag)
        
        userProfileOb
            .subscribe(on: MainScheduler.instance)
            .subscribe(onNext: { [weak self] userProfile in
                self?.userProfile = userProfile
            }).disposed(by: disposeBag)
    }
}
