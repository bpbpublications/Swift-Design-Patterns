//
//  CustomView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 18/05/24.
//

import SwiftUI

struct CustomRoundedText: View {
    var text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.blue)
            .frame(width: 150, height: 50)
            .overlay(
                Text(text)
                    .foregroundColor(.white)
                
            ).modifier(DropShadowModifier())
    }
}

struct DropShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: .gray, radius: 15, x: 0, y: 2)
    }
}



#Preview {
    CustomRoundedText(text: "CustomRoundedText")
}

