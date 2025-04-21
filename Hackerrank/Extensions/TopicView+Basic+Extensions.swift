//
//  TopicView+Basic+Extensions.swift
//  Hackerrank
//
//  Created by rafael on 15/04/25.
//
import SwiftUI

extension TopicView {
    
    
    
    func syntaxExamples() -> some View {
        Group {
            Text("1. Declaração de Variáveis:")
            Text("var greeting: String = \"Hello, World!\"")
            Divider()
            Text("2. Constantes:")
            Text("let pi: Double = 3.14")
            Divider()
            Text("3. Operadores:")
            Text("let sum = 5 + 3")
        }
    }
    
    func controlFlowExamples() -> some View {
        Group {
            Text("1. If Statement:")
            Text("if x > 10 { print(\"x é maior que 10\") }")
            Divider()
            Text("2. Switch Statement:")
            Text("switch dayOfWeek { case 1: print(\"Segunda\"); default: print(\"Outro dia\") }")
            Divider()
            Text("3. Loop For:")
            Text("for i in 1...5 { print(i) }")
        }
    }
    
    func functionExamples() -> some View {
        Group {
            Text("1. Função Simples:")
            Text("func greet() { print(\"Hello!\") }")
            Divider()
            Text("2. Função com Parâmetros:")
            Text("func add(a: Int, b: Int) -> Int { return a + b }")
            Divider()
            Text("3. Função com Parâmetro Padrão:")
            Text("func multiply(a: Int, b: Int = 2) -> Int { return a * b }")
        }
    }
    
    func collectionExamples() -> some View {
        Group {
            Text("1. Array:")
            Text("var numbers = [1, 2, 3, 4, 5]")
            Divider()
            Text("2. Dicionário:")
            Text("var person = [\"name\": \"John\", \"age\": 30]")
            Divider()
            Text("3. Set:")
            Text("var uniqueNumbers: Set = [1, 2, 3, 4, 4]")
            Divider()
            VStack {
                Text("4. Array Exercício:")
                Text("Uma seleção de 30 pessoas, pegar os 10 candidatos com melhores notas:")
                CandidatesView()
            }
        }
    }
    
    func structClassExamples() -> some View {
        Group {
            Text("1. Estrutura Simples:")
            Text("struct Dog { var name: String }")
            Divider()
            Text("2. Classe Simples:")
            Text("class Car { var model: String }")
            Divider()
            Text("3. Propriedades e Métodos:")
            Text("struct Circle { var radius: Double; func area() -> Double { return .pi * radius * radius } }")
        }
    }
    
    func errorHandlingExamples() -> some View {
        Group {
            Text("1. Lançando Erros:")
            Text("enum MyError: Error { case somethingWrong }")
            Divider()
            Text("2. Usando do-catch:")
            Text("do { try throw MyError.somethingWrong } catch { print(\"Error caught\") }")
            Divider()
            Text("3. Função que Lança Erros:")
            Text("func riskyFunction() throws { throw MyError.somethingWrong }")
        }
    }

}
