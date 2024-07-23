//
//  File.swift
//  
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation
import RxSwift

class ViewModel {
    private let disposeBag = DisposeBag()
    
    func fetchData() {
        fetchDataObservable()
            .subscribe(onNext: { data in
                // Handle data
            })
            .disposed(by: disposeBag)
    }
    
    private func fetchDataObservable() -> Observable<Data> {
        Observable.just(Data())
    }
}
