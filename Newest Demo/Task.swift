//
//  Task.swift
//  Newest Demo
//
//  Created by Mansa Patel on 2/8/25.
//
// Import the Foundation framework to access essential data types and utilities like `UUID`.
import Foundation

struct Task: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted: Bool = false
}
