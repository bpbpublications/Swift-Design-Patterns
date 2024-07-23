//
//  NavigationStackView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 19/05/24.
//

import SwiftUI

struct NavigationStackView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: Text("First Details View"),
                    label: {
                        Text("Go to First Details View")
                    }
                )
                .navigationBarTitle("Home")

                NavigationLink(
                    destination: Text("Second Details View"),
                    label: {
                        Text("Go to Second Details View")
                    }
                )
            }
        }
    }
}

#Preview {
    NavigationStackView()
}
