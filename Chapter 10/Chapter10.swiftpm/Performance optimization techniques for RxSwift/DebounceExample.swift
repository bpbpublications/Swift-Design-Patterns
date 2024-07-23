//
//  File.swift
//  
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation
import RxSwift

class DebounceExample {
    
    private let disposeBag = DisposeBag()
    init() {
        fetchDataObservable()
            .debounce(.seconds(1), scheduler: MainScheduler.instance)
            .subscribe(onNext: { data in
                // Handle debounced data
            })
            .disposed(by: disposeBag)

    }
    
    private func fetchDataObservable() -> Observable<Data> {
        Observable.just(Data())
    }
}
