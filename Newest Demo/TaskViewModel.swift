//
//  TaskViewModel.swift
//  Newest Demo
//
//  Created by Mansa Patel on 2/8/25.
//


import SwiftUI

// Define a class `TaskViewModel` that conforms to the `ObservableObject` protocol,
// allowing it to notify views when its data changes.
class TaskViewModel: ObservableObject {
    // Define a published property `tasks`, which holds an array of `Task` objects.
    // This property is marked with @Published so that the view will update when it changes.
    @Published var tasks: [Task] = []
    
    // A method to add a new task. It creates a new `Task` with the provided `title`
    // and appends it to the `tasks` array.
    func addTask(title: String) {
        let newTask = Task(title: title)
        tasks.append(newTask)
    }
    
    // A method to delete a task at a specific index, using `atOffsets` to handle deletions
    // from the `tasks` array using an `IndexSet` (an ordered collection of indices).
    func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
    
    // A method to toggle the `isCompleted` status of a task.
    // It finds the task by matching the `id` and toggles its `isCompleted` value.
    func toggleCompletion(for task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }
    
    // A method to delete a specific task by matching its `id`.
    // It finds the task and removes it from the `tasks` array.
    func toggleDeletion(for task: Task) {
            if let index = tasks.firstIndex(where: { $0.id == task.id }) {
                tasks.remove(at: index)
            }
    }
}
