//
//  ModalNavigationFullScreenView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 19/05/24.
//

import SwiftUI

struct ModalNavigationFullScreenView: View {
    @State private var isPresentingFullScreen = false
    
    var body: some View {
        Button("Show Full Screen Modal") {
            isPresentingFullScreen.toggle()
        }
        .fullScreenCover(isPresented: $isPresentingFullScreen) {
            FullScreenModalView()
        }
    }
}

struct FullScreenModalView: View {
    var body: some View {
        Text("This is a full-screen modal view.")
    }
}


#Preview {
    ModalNavigationFullScreenView()
}
