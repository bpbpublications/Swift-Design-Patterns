//
//  CounterView.swift
//
//
//  Created by Mihir Das on 19/07/24.
//

import SwiftUI

struct CounterView: View {
    @StateObject private var viewModel = CounterViewModel()
    
    var body: some View {
        VStack {
            Text("Count: \(viewModel.count)")
                .font(.title)
                .padding()
            
            Button("Increment") {
                viewModel.increment()
            }
            .padding()
        }
    }

}

#Preview {
    CounterView()
}
