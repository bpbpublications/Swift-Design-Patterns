//
//  TaskListPresenter.swift
//
//
//  Created by Mihir Das on 18/07/24.
//

import Foundation

class TaskListPresenter: ObservableObject {
    @Published var tasks: [Task] = [Task(title: "Task", isCompleted: false)]
    private var count = 1
    func addTask() {
        // Logic to add a new task
        tasks.append(Task(title: "New Task \(count)", isCompleted: false))
        count += 1
    }

    func deleteTask(at index: Int) {
        // Logic to delete a task
    }

    func toggleTaskCompleted(at index: Int) {
        // Logic to toggle task completion status
    }
}
