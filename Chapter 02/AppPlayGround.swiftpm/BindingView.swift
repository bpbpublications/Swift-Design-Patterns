//
//  BindingView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 18/05/24.
//

import SwiftUI

struct ParentView: View {
    @State private var childData = "Hello from Parent"
    
    var body: some View {
        ChildView(data: $childData)
    }
}

struct ChildView: View {
    @Binding var data: String
    
    var body: some View {
        Text(data)
        Button("Update Data") {
            data = "Updated from Child"
        }
    }
}

#Preview {
    ParentView()
}
