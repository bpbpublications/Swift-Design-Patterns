//
//  NetworkService.swift
//
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation

import RxSwift

class NetworkService {
    func fetchData() -> Observable<Data> {
        return Observable.create { observer in
            // Perform network request
            URLSession.shared.dataTask(with: URL(string: "https://api.restful-api.dev/objects/7")!) { data, _, error in
                if let error = error {
                    observer.onError(error)
                } else if let data = data {
                    observer.onNext(data)
                    observer.onCompleted()
                }
            }.resume()
            
            return Disposables.create()
        }
    }
}
