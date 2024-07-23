//
//  CustomRxOperator.swift
//
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation
import RxSwift

extension ObservableType {
    func customMap<T>(_ transform: @escaping (Element) -> T) -> Observable<T> {
        return map(transform)
    }
}

class CustomRxOperator {
    let disposeBag = DisposeBag()
    init() {
        Observable.just(1)
        .customMap { value in
            return value * 2
        }
        .subscribe(onNext: { newValue in
            print(newValue) // Output: 2
        })
        .disposed(by: disposeBag)
    }
}

