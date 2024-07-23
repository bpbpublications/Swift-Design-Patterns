//
//  ObservedObjectView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 19/05/24.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var username = "Guest"
}

struct ObservedObjectView: View {
    @ObservedObject var userData = UserData()
    
    var body: some View {
        VStack {
            Text("Hello, \(userData.username)!")
            Button("Change Username") {
                userData.username = "SwiftUI User"
            }
        }
    }
}


#Preview {
    ObservedObjectView()
}
