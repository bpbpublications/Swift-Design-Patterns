//
//  TaskListView.swift
//
//
//  Created by Mihir Das on 18/07/24.
//

import SwiftUI

struct TaskListView: View {
    @StateObject var presenter: TaskListPresenter

    var body: some View {
        List {
            ForEach(presenter.tasks) { task in
                TaskRowView(task: task)
            }
        }
        .navigationBarTitle("Task List")
        .navigationBarItems(trailing:
            Button(action: {
                presenter.addTask()
            }) {
                Image(systemName: "plus")
            }
        )
    }
}

#Preview {
    TaskListView(presenter: TaskListPresenter())
}
