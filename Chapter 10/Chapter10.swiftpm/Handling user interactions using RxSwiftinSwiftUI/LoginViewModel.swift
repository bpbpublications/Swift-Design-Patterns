//
//  LoginViewModel.swift
//  Chapter10
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation
import RxSwift
import RxRelay

class LoginViewModel: ObservableObject {
    private let disposeBag = DisposeBag()
    
    // Input
    private var usernameRelay = BehaviorRelay<String>(value: "")
    private var passwordRelay = BehaviorRelay<String>(value: "")
    let loginButtonTapped = PublishSubject<Void>()
    
    @Published var userName = ""
    {
        didSet {
            usernameRelay.accept(userName)
        }
    }
    @Published var password = "" {
        didSet {
            passwordRelay.accept(password)
        }
    }

    // Output
    let authenticationResult: Observable<Bool>
    @Published var errorMessage: String = ""
    
    init() {
        
        
        
        authenticationResult = loginButtonTapped
            .withLatestFrom(Observable.combineLatest(usernameRelay, passwordRelay))
            .flatMapLatest { (username, password) -> Observable<Bool> in
                // Simulating authentication process
                let isAuthenticated = username == "user" && password == "password"
                return Observable.just(isAuthenticated)
                    .delay(.seconds(1), scheduler: MainScheduler.instance) // Simulate network delay
            }
            .share()
        
          authenticationResult
            .map { isAuthenticated -> String in
                isAuthenticated ? "" : "Invalid username or password"
            }
            .share()
            .subscribe(on: MainScheduler.instance)
            .subscribe(onNext: { [weak self] str in
                self?.errorMessage = str
            }).disposed(by: disposeBag)
    }
}
