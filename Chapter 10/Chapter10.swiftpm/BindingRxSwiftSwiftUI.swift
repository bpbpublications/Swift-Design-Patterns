//
//  BindingRxSwiftSwiftUI.swift
//  Chapter10
//
//  Created by Mihir Das on 19/07/24.
//

import SwiftUI
import RxSwift
import Combine

struct BindingRxSwiftSwiftUI: View {
    @State private var text: String = ""
        private let disposeBag = DisposeBag()

        var body: some View {
            TextField("Enter text", text: $text)
                .padding()
                .onReceive(observable.toPublisher()) { newValue in
                    self.text = newValue
                }
        }

        private var observable: Observable<String> {
            return Observable.create { observer in
                // Simulate data emission
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    observer.onNext("Data from RxSwift")
                    observer.onCompleted()
                }
                return Disposables.create()
            }
        }

}

extension ObservableType {
    func toPublisher() -> AnyPublisher<Element, Never> {
        let subject = PassthroughSubject<Element, Never>()
        _ = subscribe(
            onNext: { element in
                subject.send(element)
            },
            onError: { error in
                // Handle error if needed. Since we convert to `Never`, we do not propagate the error.
                // For now, just print it or handle appropriately
                print("Received error: \(error)")
                subject.send(completion: .finished)
            },
            onCompleted: {
                subject.send(completion: .finished)
            }
        )
        return subject.eraseToAnyPublisher()
    }
}

#Preview {
    BindingRxSwiftSwiftUI()
}
