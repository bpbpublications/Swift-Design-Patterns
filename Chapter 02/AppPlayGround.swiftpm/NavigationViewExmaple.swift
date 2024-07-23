//
//  NavigationViewExmaple.swift
//  AppPlayGround
//
//  Created by Mihir Das on 19/05/24.
//

import SwiftUI

struct NavigationViewExmaple: View {
    var body: some View {
        NavigationView {
            Text("Welcome to SwiftUI Navigation")
                .navigationBarTitle("Home")
        }
    }
}

#Preview {
    NavigationViewExmaple()
}
