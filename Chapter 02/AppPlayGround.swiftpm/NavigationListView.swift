//
//  NavigationListView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 19/05/24.
//

import SwiftUI

struct NavigationListView: View {
    var body: some View {
            NavigationView {
                List {
                    NavigationLink(
                        destination: Text("Item 1 Details"),
                        label: {
                            Text("Item 1")
                        }
                    )
                    NavigationLink(
                        destination: Text("Item 2 Details"),
                        label: {
                            Text("Item 2")
                        }
                    )
                }
                .navigationBarTitle("Items")
            }
        }

}

#Preview {
    NavigationListView()
}
