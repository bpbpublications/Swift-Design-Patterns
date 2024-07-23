//
//  StackView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 19/05/24.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack {
            Text("First Item")
            Text("Second Item")
            Text("Third Item")
            HStack {
                Spacer()
                Text("Left Item")
                Spacer()
                Text("Middle Item")
                Spacer()
                Text("Right Item")
                Spacer()

            }
        }
    }
}

#Preview {
    StackView()
}
