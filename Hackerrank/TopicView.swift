//
//  TopicView.swift
//  Hackerrank
//
//  Created by rafael on 15/04/25.
//

import SwiftUI

struct TopicView: View {
    var topic: String
    
    // Dicionário que associa o nome do tópico às funções de exemplo
    private var examples: [String: () -> AnyView] {
        [
            "Syntax": { AnyView(syntaxExamples()) },
            "Control Flow": { AnyView(controlFlowExamples()) },
            "Functions": { AnyView(functionExamples()) },
            "Collections": { AnyView(collectionExamples()) },
            "Structures and Classes": { AnyView(structClassExamples()) },
            "Error Handling": { AnyView(errorHandlingExamples()) },
            "Optionals": { AnyView(optionalExamples()) },
            "Closures": { AnyView(closureExamples()) },
            "Generics": { AnyView(genericExamples()) },
            "Extensions": { AnyView(extensionExamples()) },
            "Testing": { AnyView(testingExamples()) },
            "Inheritance and Protocols": { AnyView(inheritanceAndProtocolsExamples()) },
            "Memory Management": { AnyView(memoryManagementExamples()) },
            "Concurrency": { AnyView(concurrencyExamples()) },
            "SwiftUI": { AnyView(swiftUIExamples()) },
            "Design Patterns": { AnyView(designPatternsExamples()) },
            "Performance Optimization": { AnyView(performanceOptimizationExamples()) },
            "Cocoa Touch Frameworks": { AnyView(generalExamples()) },
            "Networking and APIs": { AnyView(generalExamples()) },
            "UI/UX Design": { AnyView(generalExamples()) },
            "Human Interface Guidelines": { AnyView(generalExamples()) },
            "General": { AnyView(generalExamples()) }
        ]
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(topic)
                    .font(.largeTitle)
                    .padding()
                
                if let exampleView = examples[topic]?() {
                    exampleView
                } else {
                    Text("Exemplos não disponíveis para este tópico.")
                }
            }
            .padding()
        }
    }
    
    
}
