//
//  RxSwiftExample.swift
//  Chapter10
//
//  Created by Mihir Das on 18/07/24.
//

import Foundation

import RxSwift

class RxSwiftExample {
    
    func FirstExample() {
        let observable = Observable.of(1, 2, 3, 4, 5)

        observable
            .map { $0 * 2 } // Transforming operator
            .filter { $0 % 3 == 0 } // Filtering operator
            .subscribe(onNext: { value in
                print(value)
            })
    }
    
    func ObservablesAndObservers() {
        let observable = Observable.of(1, 2, 3, 4, 5)

        let subscription = observable.subscribe { event in
            print(event)
        }

    }
    
    func publishSubjectExample() {
        let publishSubject = PublishSubject<String>()

        publishSubject.onNext("A")
        publishSubject.onNext("B")

        let subscription = publishSubject.subscribe { event in
            print(event)
        }

        publishSubject.onNext("C")
    }
    
    
    func behaviorSubjectExample() {
        
        let behaviorSubject = BehaviorSubject(value: "Initial")

        // First subscriber
        let disposable1 = behaviorSubject.subscribe(
            onNext: { print("Subscriber 1: \($0)") },
            onError: { print("Subscriber 1 Error: \($0)") },
            onCompleted: { print("Subscriber 1 completed") }
        )

        // Emit some items
        behaviorSubject.onNext("A")
        behaviorSubject.onNext("B")

        // Second subscriber
        let disposable2 = behaviorSubject.subscribe(
            onNext: { print("Subscriber 2: \($0)") },
            onError: { print("Subscriber 2 Error: \($0)") },
            onCompleted: { print("Subscriber 2 completed") }
        )

        // Emit more items
        behaviorSubject.onNext("C")
        behaviorSubject.onNext("D")

        // Complete the subject
        behaviorSubject.onCompleted()

        // Disposing subscriptions
        disposable1.dispose()
        disposable2.dispose()

    }
    
    func replaySubjectExample() {
        let replaySubject = ReplaySubject<String>.create(bufferSize: 2)

        // First subscriber
        let disposable1 = replaySubject.subscribe(
            onNext: { print("Subscriber 1: \($0)") },
            onError: { print("Subscriber 1 Error: \($0)") },
            onCompleted: { print("Subscriber 1 completed") }
        )

        // Emit some items
        replaySubject.onNext("A")
        replaySubject.onNext("B")
        replaySubject.onNext("C")

        // Second subscriber
        let disposable2 = replaySubject.subscribe(
            onNext: { print("Subscriber 2: \($0)") },
            onError: { print("Subscriber 2 Error: \($0)") },
            onCompleted: { print("Subscriber 2 completed") }
        )

        // Emit more items
        replaySubject.onNext("D")

        // Complete the subject
        replaySubject.onCompleted()

        // Disposing subscriptions
        disposable1.dispose()
        disposable2.dispose()

    }
    
    func operatorsExample() {
        
        let observable = Observable.of(1, 2, 3, 4, 5)

        observable
            .map { $0 * 2 } // Transforming operator
            .filter { $0 % 3 == 0 } // Filtering operator
            .subscribe(onNext: { value in
                print(value)
            })

    }
    
    func subscriptionsAndDisposables() {
        let observable = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)

        let subscription = observable.subscribe { event in
            print(event)
        }

        // Dispose of the subscription after 5 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            subscription.dispose()
        }
    }
    
}
