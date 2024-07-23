//
//  CounterViewModel.swift
//
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation

class CounterViewModel: ObservableObject {
    // Output
    @Published var count: Int = 0
    
    // Actions
    func increment() {
        count += 1
    }
}
