//
//  TaskRowView.swift
//
//
//  Created by Mihir Das on 18/07/24.
//

import SwiftUI

struct TaskRowView: View {
    var task: Task  // Assuming `Task` is a model struct representing a task

    var body: some View {
        HStack {
            Text(task.title)  // Display the task's title
            Spacer()
            Text(task.isCompleted ? "Completed" : "Incomplete")  // Display the task's due date
        }
        .padding()
    }
}

#Preview {
    TaskRowView(task: Task(title: "Walk", isCompleted: false))
}
