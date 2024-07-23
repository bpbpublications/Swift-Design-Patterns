//
//  ErrorHandling.swift
//
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation
import RxSwift

class ErrorHandling {
    
    private let disposeBag = DisposeBag()
    init() {
        fetchData()
            .catch { error in
                // Handle error
                return Observable.empty()
            }
            .retry(3) // Retry the operation 3 times
            .subscribe(onNext: { data in
                // Handle successful response
            })
            .disposed(by: disposeBag)

    }
    
    func fetchData() -> Observable<String> {
        Observable.just("Return Data")
    }
}
