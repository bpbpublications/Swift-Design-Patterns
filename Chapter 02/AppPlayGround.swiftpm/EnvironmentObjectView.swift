//
//  EnvironmentObjectView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 19/05/24.
//

import SwiftUI

struct EnvironmentObjectView: View {
    @EnvironmentObject var userData: UserData
    
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
    EnvironmentObjectView()            .environmentObject(UserData())
}
