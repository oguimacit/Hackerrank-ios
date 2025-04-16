//
//  ContentView.swift
//  Hackerrank
//
//  Created by rafael on 15/04/25.
//

import SwiftUI

struct Topic: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView: View {
    @State private var selectedTopic: Topic? = nil
        
        var body: some View {
            NavigationView {
                List {
                    Section(header: Text("Basic")) {
                        Button("Syntax") { selectedTopic = Topic(name: "Syntax") }
                        Button("Control Flow") { selectedTopic = Topic(name: "Control Flow") }
                        Button("Functions") { selectedTopic = Topic(name: "Functions") }
                        Button("Collections") { selectedTopic = Topic(name: "Collections") }
                        Button("Structures and Classes") { selectedTopic = Topic(name: "Structures and Classes") }
                        Button("Error Handling") { selectedTopic = Topic(name: "Error Handling") }
                    }
                    
                    Section(header: Text("Intermediate")) {
                        Button("Optionals") { selectedTopic = Topic(name: "Optionals") }
                        Button("Closures") { selectedTopic = Topic(name: "Closures") }
                        Button("Generics") { selectedTopic = Topic(name: "Generics") }
                        Button("Extensions") { selectedTopic = Topic(name: "Extensions") }
                        Button("Xcode") { selectedTopic = Topic(name: "Xcode") }
                        Button("Testing") { selectedTopic = Topic(name: "Testing") }
                    }
                    
                    Section(header: Text("Advanced")) {
                        Button("Inheritance and Protocols") { selectedTopic = Topic(name: "Inheritance and Protocols") }
                        Button("Memory Management") { selectedTopic = Topic(name: "Memory Management") }
                        Button("Concurrency") { selectedTopic = Topic(name: "Concurrency") }
                        Button("SwiftUI") { selectedTopic = Topic(name: "SwiftUI") }
                        Button("Design Patterns") { selectedTopic = Topic(name: "Design Patterns") }
                        Button("Performance Optimization") { selectedTopic = Topic(name: "Performance Optimization") }
                    }
                    
                    Section(header: Text("General")) {
                        Button("Cocoa Touch Frameworks") { selectedTopic = Topic(name: "Cocoa Touch Frameworks") }
                        Button("Networking and APIs") { selectedTopic = Topic(name: "Networking and APIs") }
                        Button("UI/UX Design") { selectedTopic = Topic(name: "UI/UX Design") }
                        Button("Human Interface Guidelines") { selectedTopic = Topic(name: "Human Interface Guidelines") }
                    }
                }
                .navigationTitle("HackerRank Skills")
                .sheet(item: $selectedTopic) { topic in
                    TopicView(topic: topic.name)
                }
            }
        }
}

#Preview {
    ContentView()
}
