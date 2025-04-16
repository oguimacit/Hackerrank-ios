//
//  TopicView+Intermediate+Extensions.swift
//  Hackerrank
//
//  Created by rafael on 15/04/25.
//
import SwiftUI

extension TopicView {
    // MARK: - Exemplos Avançados
    
    func inheritanceAndProtocolsExamples() -> some View {
        Group {
            Text("1. Classe Base e Subclasse:")
            Text("""
            class Animal {
                func makeSound() { print("Animal sound") }
            }
            class Dog: Animal {
                override func makeSound() { print("Bark") }
            }
            """)
            Divider()
            Text("2. Protocolos Simples:")
            Text("""
            protocol Movable {
                func move()
            }
            class Car: Movable {
                func move() { print("Car is moving") }
            }
            """)
            Divider()
            Text("3. Protocolos com Propriedades:")
            Text("""
            protocol Named {
                var name: String { get }
            }
            struct Person: Named {
                var name: String
            }
            """)
            Divider()
            Text("4. Protocolos com Métodos de Inicialização:")
            Text("""
            protocol Initializable {
                init()
            }
            struct Example: Initializable {
                init() { }
            }
            """)
            Divider()
            Text("5. Conformidade a Múltiplos Protocolos:")
            Text("""
            protocol Flyable {
                func fly()
            }
            class Bird: Movable, Flyable {
                func move() { print("Bird is moving") }
                func fly() { print("Bird is flying") }
            }
            """)
            Divider()
            Text("6. Herança Múltipla com Protocolos:")
            Text("""
            protocol Eater {
                func eat()
            }
            class Cat: Animal, Eater {
                func eat() { print("Cat is eating") }
            }
            """)
            Divider()
            Text("7. Protocol Extension:")
            Text("""
            extension Movable {
                func stop() { print("Stopped") }
            }
            """)
            Divider()
            Text("8. Protocolo com Métodos de Default:")
            Text("""
            protocol Describable {
                func describe() -> String
            }
            extension Describable {
                func describe() -> String { return "I am a describable object." }
            }
            """)
            Divider()
            Text("9. Protocols como Tipos de Dados:")
            Text("""
            func performAction(using movable: Movable) {
                movable.move()
            }
            """)
            Divider()
            Text("10. Protocol Composition:")
            Text("""
            func performAction(using item: Movable & Eater) {
                item.move()
                item.eat()
            }
            """)
        }
    }
    
    func memoryManagementExamples() -> some View {
        Group {
            Text("1. Referência Forte e Fraca:")
            Text("""
            class ObjectA {
                var objectB: ObjectB?
            }
            class ObjectB {
                weak var objectA: ObjectA?
            }
            """)
            Divider()
            Text("2. Evitando Ciclos de Retenção:")
            Text("""
            class Person {
                var name: String
                var friend: Person?
                init(name: String) { self.name = name }
            }
            """)
            Divider()
            Text("3. Usando `unowned`:")
            Text("""
            class Owner {
                var pet: Pet
                init(pet: Pet) { self.pet = pet }
            }
            class Pet {
                unowned var owner: Owner
                init(owner: Owner) { self.owner = owner }
            }
            """)
            Divider()
            Text("4. Verificando Ciclos de Retenção:")
            Text("""
            func createCycle() {
                var objectA: ObjectA? = ObjectA()
                var objectB: ObjectB? = ObjectB()
                objectA?.objectB = objectB
                objectB?.objectA = objectA // Ciclo de Retenção
            }
            """)
            Divider()
            Text("5. Usando `deinit` para Limpeza:")
            Text("""
            class MyClass {
                deinit { print("Instance is being deinitialized") }
            }
            """)
            Divider()
            Text("6. Usando `lazy` para Inicialização Tardia:")
            Text("""
            class DataLoader {
                lazy var data = loadData()
                func loadData() -> [String] { return ["Data1", "Data2"] }
            }
            """)
            Divider()
            Text("7. Observando Ciclos de Retenção com DTrace:")
            Text("""
            // Exemplo de uso de ferramentas externas para análise de memória.
            """)
            Divider()
            Text("8. Contando Referências:")
            Text("""
            class ReferenceCounter {
                var count = 0
                func increment() { count += 1 }
            }
            """)
            Divider()
            Text("9. Usando `autoreleasepool`:")
            Text("""
            autoreleasepool {
                let object = Object()
            }
            """)
            Divider()
            Text("10. Memória de Objetos de Valor e Referência:")
            Text("""
            struct ValueObject { var value: Int }
            class ReferenceObject { var value: Int }
            """)
        }
    }
    
    func concurrencyExamples() -> some View {
        Group {
            Text("1. Usando DispatchQueue:")
            Text("""
            DispatchQueue.global().async {
                print("Executando em segundo plano")
            }
            """)
            Divider()
            Text("2. DispatchGroup para Agrupar Tarefas:")
            Text("""
            let group = DispatchGroup()
            group.enter()
            DispatchQueue.global().async {
                // tarefa
                group.leave()
            }
            group.notify(queue: .main) {
                print("Todas as tarefas concluídas")
            }
            """)
            Divider()
            Text("3. Usando Semáforos:")
            Text("""
            let semaphore = DispatchSemaphore(value: 1)
            semaphore.wait()
            // seção crítica
            semaphore.signal()
            """)
            Divider()
            Text("4. Usando `async/await`:")
            Text("""
            func fetchData() async {
                let data = await loadData()
            }
            """)
            Divider()
            Text("5. Task para Executar em Concorrência:")
            Text("""
            Task {
                print("Executando tarefa assíncrona")
            }
            """)
            Divider()
            Text("6. Usando `MainActor`:")
            Text("""
            @MainActor
            func updateUI() {
                // Atualizações na interface do usuário
            }
            """)
            Divider()
            Text("7. Tarefas Aninhadas:")
            Text("""
            Task {
                await Task {
                    // tarefa interna
                }
            }
            """)
            Divider()
            Text("8. Cancelamento de Tarefas:")
            Text("""
            let task = Task {
                // longa operação
            }
            task.cancel()
            """)
            Divider()
            Text("9. Usando `withTaskGroup`:")
            Text("""
            await withTaskGroup(of: Void.self) { group in
                group.addTask {
                    // tarefa 1
                }
                group.addTask {
                    // tarefa 2
                }
            }
            """)
            Divider()
            Text("10. Usando `Task.sleep`:")
            Text("""
            await Task.sleep(1_000_000_000) // espera 1 segundo
            """)
        }
    }
    
    func swiftUIExamples() -> some View {
        Group {
            Text("1. Criando uma View Simples:")
            Text("""
            struct SimpleView: View {
                var body: some View {
                    Text("Hello, SwiftUI!")
                }
            }
            """)
            Divider()
            Text("2. Usando State:")
            Text("""
            struct CounterView: View {
                @State private var count = 0
                var body: some View {
                    VStack {
                        Text("Count: \\(count)")
                        Button("Increment") { count += 1 }
                    }
                }
            }
            """)
            Divider()
            Text("3. Usando Binding:")
            Text("""
            struct ParentView: View {
                @State private var text = ""
                var body: some View {
                    ChildView(text: $text)
                }
            }
            struct ChildView: View {
                @Binding var text: String
                var body: some View {
                    TextField("Enter text", text: $text)
                }
            }
            """)
            Divider()
            Text("4. Usando Listas:")
            Text("""
            struct ItemListView: View {
                let items = ["Item 1", "Item 2", "Item 3"]
                var body: some View {
                    List(items, id: \\.self) { item in
                        Text(item)
                    }
                }
            }
            """)
            Divider()
            Text("5. Modificadores de View:")
            Text("""
            Text("Hello, World!")
                .font(.title)
                .foregroundColor(.blue)
            """)
            Divider()
            Text("6. Usando NavigationView:")
            Text("""
            NavigationView {
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail")
                }
            }
            """)
            Divider()
            Text("7. Usando ZStack para Sobreposição:")
            Text("""
            ZStack {
                Image("background")
                Text("Overlay Text")
            }
            """)
            Divider()
            Text("8. Usando GeometryReader:")
            Text("""
            GeometryReader { geometry in
                Text("Width: \\(geometry.size.width)")
            }
            """)
            Divider()
            Text("9. Usando Animations:")
            Text("""
            @State private var scale: CGFloat = 1.0
            var body: some View {
                Circle()
                    .scaleEffect(scale)
                    .onTapGesture {
                        withAnimation { scale = 1.5 }
                    }
            }
            """)
            Divider()
            Text("10. Usando Gestos:")
            Text("""
            struct GestureView: View {
                @State private var offset = CGSize.zero
                var body: some View {
                    Rectangle()
                        .offset(offset)
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    offset = value.translation
                                }
                        )
                }
            }
            """)
        }
    }
    
    func designPatternsExamples() -> some View {
        Group {
            Text("1. Singleton Pattern:")
            Text("""
            class Singleton {
                static let shared = Singleton()
                private init() { }
            }
            """)
            Divider()
            Text("2. Observer Pattern:")
            Text("""
            protocol Observer {
                func update()
            }
            class Subject {
                private var observers = [Observer]()
                func addObserver(_ observer: Observer) { observers.append(observer) }
                func notify() { observers.forEach { $0.update() } }
            }
            """)
            Divider()
            Text("3. Factory Pattern:")
            Text("""
            protocol Product {
                func use()
            }
            class ConcreteProduct: Product {
                func use() { print("Using product") }
            }
            class Factory {
                func createProduct() -> Product { return ConcreteProduct() }
            }
            """)
            Divider()
            Text("4. Decorator Pattern:")
            Text("""
            protocol Coffee {
                func cost() -> Double
            }
            class SimpleCoffee: Coffee {
                func cost() -> Double { return 1.0 }
            }
            class MilkDecorator: Coffee {
                private let coffee: Coffee
                init(coffee: Coffee) { self.coffee = coffee }
                func cost() -> Double { return coffee.cost() + 0.5 }
            }
            """)
            Divider()
            Text("5. Strategy Pattern:")
            Text("""
            protocol SortingStrategy {
                func sort(_ array: [Int]) -> [Int]
            }
            class QuickSort: SortingStrategy {
                func sort(_ array: [Int]) -> [Int] { /* implementação do QuickSort */ }
            }
            """)
            Divider()
            Text("6. Command Pattern:")
            Text("""
            protocol Command {
                func execute()
            }
            class Light {
                func turnOn() { print("Light on") }
                func turnOff() { print("Light off") }
            }
            class LightOnCommand: Command {
                let light: Light
                init(light: Light) { self.light = light }
                func execute() { light.turnOn() }
            }
            """)
            Divider()
            Text("7. State Pattern:")
            Text("""
            class Context {
                private var state: State
                func setState(_ state: State) { self.state = state }
            }
            protocol State {
                func handle(context: Context)
            }
            """)
            Divider()
            Text("8. Adapter Pattern:")
            Text("""
            protocol Target {
                func request()
            }
            class Adaptee {
                func specificRequest() { print("Specific request") }
            }
            class Adapter: Target {
                private let adaptee: Adaptee
                init(adaptee: Adaptee) { self.adaptee = adaptee }
                func request() { adaptee.specificRequest() }
            }
            """)
            Divider()
            Text("9. Template Method Pattern:")
            Text("""
            class AbstractClass {
                func templateMethod() {
                    stepOne()
                    stepTwo()
                }
                func stepOne() { /* implementação padrão */ }
                func stepTwo() { /* implementação padrão */ }
            }
            """)
            Divider()
            Text("10. Visitor Pattern:")
            Text("""
            protocol Visitor {
                func visit(element: Element)
            }
            protocol Element {
                func accept(visitor: Visitor)
            }
            """)
        }
    }
    
    func performanceOptimizationExamples() -> some View {
        Group {
            Text("1. Usando Lazy Collections:")
            Text("""
            let lazyArray = Array(1...1000).lazy.map { $0 * 2 }
            """)
            Divider()
            Text("2. Evitando Cópias Desnecessárias:")
            Text("""
            func processData(_ data: inout [Int]) { /* processamento */ }
            var myData = [1, 2, 3]
            processData(&myData)
            """)
            Divider()
            Text("3. Usando Structs ao Invés de Classes para Imutabilidade:")
            Text("""
            struct Point {
                var x: Int
                var y: Int
            }
            """)
            Divider()
            Text("4. Usando `final` em Classes para Melhor Desempenho:")
            Text("""
            final class FinalClass { }
            """)
            Divider()
            Text("5. Usando `@escaping` para Melhorar Performance em Closures:")
            Text("""
            func performAsyncTask(completion: @escaping () -> Void) { /* tarefa assíncrona */ }
            """)
            Divider()
            Text("6. Usando `@autoclosure` para Melhorar Desempenho:")
            Text("""
            func log(_ message: @autoclosure () -> String) {
                print(message())
            }
            """)
            Divider()
            Text("7. Profiler para Análise de Performance:")
            Text("""
            // Use o Instruments para monitorar a performance
            """)
            Divider()
            Text("8. Usando `withUnsafePointer` para Performance Crítica:")
            Text("""
            func processPointer(_ ptr: UnsafePointer<Int>) { /* processamento */ }
            """)
            Divider()
            Text("9. Evitando Ciclos de Cópia em Estruturas:")
            Text("""
            struct Wrapper {
                var value: Int
                mutating func update() { value += 1 }
            }
            """)
            Divider()
            Text("10. Usando `@inline` para Melhoria de Performance:")
            Text("""
            @inline(__always) func alwaysInline() { /* código */ }
            """)
        }
    }
}
