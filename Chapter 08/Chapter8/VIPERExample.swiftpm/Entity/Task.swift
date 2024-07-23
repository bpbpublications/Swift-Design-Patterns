//
//  Task.swift
//
//
//  Created by Mihir Das on 18/07/24.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
}
