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

// helper code for toggle

// For let's say changing images, you would add your bool var with ? and the two different modes after these.
// So lets say for Image(systemName) or foreground colors you would simply add  ( task.isBool ? "red", "yellow")
// onTapGesture {
//     withAnimation {
//         viewModel.your_toggle_function(for: task)
//                }
//    }


                      

