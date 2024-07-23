//
//  File.swift
//  
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation
import RxSwift

class RxMultithreading {
    
    let disposeBag = DisposeBag()
    
    init() {
        Observable.just("Data")
            .subscribe(on: ConcurrentDispatchQueueScheduler(qos: .background))
            .observe(on: MainScheduler.instance)
            .subscribe(onNext: { data in
                // Update UI with data on the main thread
            })
            .disposed(by: disposeBag)
    }
}
