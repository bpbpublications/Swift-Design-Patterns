//
//  StateView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 18/05/24.
//

import SwiftUI

struct StateView: View {
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text("Counter: \(counter)")
            Button("Increment") {
                counter += 1
            }
        }
    }
}


#Preview {
    StateView()
}
