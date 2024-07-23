//
//  AlignmentView.swift
//  AppPlayGround
//
//  Created by Mihir Das on 19/05/24.
//

import SwiftUI

struct AlignmentView: View {
    var body: some View {
            HStack(alignment: .top, spacing: 20) {
                Text("Left")
                    .alignmentGuide(.top) { dimension in dimension[.bottom] }
                Spacer()
                Text("Right")
            }
            .padding()
        }

}

#Preview {
    AlignmentView()
}
