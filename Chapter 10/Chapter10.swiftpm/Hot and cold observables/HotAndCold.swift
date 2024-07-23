//
//  File.swift
//  
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation
import RxSwift

class HotAndCold {
    
    init() {
        // Cold observable
        let coldObservable = Observable<Int>.create { observer in
            // Emit values
            observer.onNext(1)
            observer.onNext(2)
            observer.onNext(3)
            return Disposables.create()
        }

        // Hot observable
        let hotObservable = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)

    }
}
