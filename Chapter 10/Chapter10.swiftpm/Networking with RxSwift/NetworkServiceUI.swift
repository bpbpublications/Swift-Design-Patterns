//
//  NetworkServiceUI.swift
//
//
//  Created by Mihir Das on 19/07/24.
//

import SwiftUI
import RxSwift

struct NetworkServiceUI: View {
    let networkService = NetworkService()
    let disposeBag = DisposeBag()
    @State private var reponse: String = ""
    var body: some View {
        Text(reponse)
            .onAppear(perform: {
                networkService.fetchData().subscribe(onNext: { data in
                    let str = String(data: data, encoding: .utf8)
                    reponse = str ?? ""
                }).disposed(by: disposeBag)
            })
    }
}

#Preview {
    NetworkServiceUI()
}
