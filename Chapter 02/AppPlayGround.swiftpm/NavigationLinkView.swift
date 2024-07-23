//
//  NavigationLinkView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 19/05/24.
//

import SwiftUI

struct NavigationLinkView: View {
    var body: some View {
            NavigationView {
                NavigationLink(
                    destination: Text("Details View")
                        .navigationBarTitle("Details"),
                    label: {
                        Text("Go to Details View")
                    }
                )
                .navigationBarTitle("Home")
              .navigationBarBackButtonHidden(true) // Hide the back button

            }
        }

}

#Preview {
    NavigationLinkView()
}
