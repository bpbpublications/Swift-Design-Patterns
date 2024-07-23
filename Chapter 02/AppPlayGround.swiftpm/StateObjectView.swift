//
//  StateObjectView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 19/05/24.
//

import SwiftUI

struct StateObjectView: View {
    @StateObject var userData = UserData()
    var body: some View {
        Text("Hello, \(userData.username)!")
    }
}

#Preview {
    StateObjectView()
}
