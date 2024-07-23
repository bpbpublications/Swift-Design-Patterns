import SwiftUI
import RxSwift

struct ContentView: View {
    @State private var counter = 0
    private let disposeBag = DisposeBag()

    var body: some View {
        VStack {
            Text("Counter: \(counter)")
                .padding()
            Button("Increment") {
                counter += 1
            }
            .padding()
        }
        .onAppear {
            Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
                .subscribe(onNext: { _ in
                    counter += 1
                })
                .disposed(by: disposeBag)
        }
    }
}

