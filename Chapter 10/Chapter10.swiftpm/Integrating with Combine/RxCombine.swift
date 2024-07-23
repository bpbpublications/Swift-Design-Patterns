//
//  RxCombine.swift
//
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation
import RxSwift
import Combine

class RxCombine {
    
    func rxToCombine<T>(_ observable: Observable<T>) -> AnyPublisher<T, Error> {
        let subject = PassthroughSubject<T, Error>()
            
            let disposable = observable.subscribe(
                onNext: { value in
                    subject.send(value)
                },
                onError: { error in
                    subject.send(completion: .failure(error))
                },
                onCompleted: {
                    subject.send(completion: .finished)
                }
            )
            
            return subject
                .handleEvents(receiveCancel: {
                    disposable.dispose()
                })
                .eraseToAnyPublisher()
    }

}
