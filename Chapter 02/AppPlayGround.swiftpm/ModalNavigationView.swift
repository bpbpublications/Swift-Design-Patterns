//
//  ModalNavigationView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 19/05/24.
//

import SwiftUI

struct ModalNavigationView: View {
    @State private var isPresentingModal = false
    
    var body: some View {
        Button("Show Modal") {
            isPresentingModal.toggle()
        }
        .sheet(isPresented: $isPresentingModal) {
            ModalView()
        }
    }

}
struct ModalView: View {
    var body: some View {
        Text("This is a modal view.")
    }
}


#Preview {
    ModalNavigationView()
}
