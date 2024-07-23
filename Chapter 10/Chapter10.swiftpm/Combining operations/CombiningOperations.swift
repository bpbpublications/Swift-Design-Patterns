//
//  CombiningOperations.swift
//
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation
import RxSwift

class CombiningOperations {
   
   private let disposeBag = DisposeBag()
    
    init() {
        
        let observable1 = fetchDataFromSource1()
        let observable2 = fetchDataFromSource2()
        Observable.zip(observable1, observable2)
            .subscribe(onNext: { data1, data2 in
                // Handle combined data
            })
            .disposed(by: disposeBag)
    }
    
    func fetchDataFromSource1() -> Observable<String> {
        Observable.just("From Source1")
    }
    
    func fetchDataFromSource2() -> Observable<String> {
        Observable.just("From Source2")
    }
}

