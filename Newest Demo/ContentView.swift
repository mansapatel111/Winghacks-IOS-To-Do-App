//
//  ContentView.swift
//  Newest Demo
//
//  Created by Mansa Patel on 2/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive{
            MainView()
        } else {
            }

        }
}

struct MainView: View {
    @StateObject private var viewModel = TaskViewModel()
    @State private var newTaskTitle = ""
    
    var body: some View {
    
        VStack {
            
            
        }
    }
}

#Preview {
    ContentView()
}
