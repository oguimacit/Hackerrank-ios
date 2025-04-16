//
//  TopicView+Intermediate+Extensions.swift
//  Hackerrank
//
//  Created by rafael on 15/04/25.
//
import SwiftUI

extension TopicView {
    func optionalExamples() -> some View {
        Group {
            Text("1. Declaração de Optionais:")
            Text("var name: String? = nil")
            Divider()
            Text("2. Unwrapping Opcional com Optional Binding:")
            Text("""
            if let unwrappedName = name {
                print(\"Nome: \\(unwrappedName)\")
            }
            """)
            Divider()
            Text("3. Nil Coalescing:")
            Text("let displayName = name ?? \"Desconhecido\"")
            Divider()
            Text("4. Forced Unwrapping:")
            Text("let forcedName = name!") // Cuidado: pode causar crash se `name` for nil
            Divider()
            Text("5. Optionais Encadeados:")
            Text("""
            let length = name?.count // Retorna nil se name for nil
            """)
        }
    }

    func closureExamples() -> some View {
        Group {
            Text("1. Closure Simples:")
            Text("""
            let greeting = { (name: String) in
                print(\"Hello, \\(name)!\")
            }
            """)
            Divider()
            Text("2. Closure com Parâmetros e Retorno:")
            Text("""
            let add: (Int, Int) -> Int = { (a, b) in
                return a + b
            }
            """)
            Divider()
            Text("3. Closure como Parâmetro de Função:")
            Text("""
            func performOperation(operation: (Int, Int) -> Int, a: Int, b: Int) {
                let result = operation(a, b)
                print(\"Resultado: \\(result)\")
            }
            """)
            Divider()
            Text("4. Capturing Values:")
            Text("""
            func makeIncrementer(incrementAmount: Int) -> () -> Int {
                var total = 0
                return {
                    total += incrementAmount
                    return total
                }
            }
            """)
            Divider()
            Text("5. Closure Escapando:")
            Text("""
            var completionHandlers: [() -> Void] = []
            func someFunctionWithEscapingClosure(completion: @escaping () -> Void) {
                completionHandlers.append(completion)
            }
            """)
        }
    }

    func genericExamples() -> some View {
        Group {
            Text("1. Função Genérica Simples:")
            Text("""
            func swapValues<T>(_ a: inout T, _ b: inout T) {
                let temp = a
                a = b
                b = temp
            }
            """)
            Divider()
            Text("2. Tipo Genérico em Estruturas:")
            Text("""
            struct Box<T> {
                var value: T
            }
            """)
            Divider()
            Text("3. Função Genérica com Restrições:")
            Text("""
            func printDescription<T: CustomStringConvertible>(_ value: T) {
                print(value.description)
            }
            """)
            Divider()
            Text("4. Usando Genéricos com Protocolos:")
            Text("""
            protocol Animal {
                var name: String { get }
            }
            
            func printAnimalName<T: Animal>(_ animal: T) {
                print(animal.name)
            }
            """)
            Divider()
            Text("5. Função Genérica com Vários Tipos:")
            Text("""
            func combine<T, U>(_ a: T, _ b: U) -> (T, U) {
                return (a, b)
            }
            """)
        }
    }

    func extensionExamples() -> some View {
        Group {
            Text("1. Extensão de Tipo:")
            Text("""
            extension Int {
                func squared() -> Int {
                    return self * self
                }
            }
            """)
            Divider()
            Text("2. Extensão com Propriedades Computadas:")
            Text("""
            extension Double {
                var squared: Double {
                    return self * self
                }
            }
            """)
            Divider()
            Text("3. Extensão de Protocolos:")
            Text("""
            protocol Summable {
                func sum() -> Int
            }
            
            extension Array: Summable where Element: Numeric {
                func sum() -> Int {
                    return self.reduce(0, { $0 + Int($1) })
                }
            }
            """)
            Divider()
            Text("4. Extensão de Classes:")
            Text("""
            class Person {
                var name: String
                init(name: String) {
                    self.name = name
                }
            }
            
            extension Person {
                func greeting() {
                    print(\"Hello, \\(name)!\")
                }
            }
            """)
            Divider()
            Text("5. Extensão para Conformar a Protocolos:")
            Text("""
            extension String: CustomStringConvertible {
                var description: String {
                    return self
                }
            }
            """)
        }
    }

    func testingExamples() -> some View {
        Group {
            Text("1. Testando uma Função Simples:")
            Text("""
            func add(a: Int, b: Int) -> Int {
                return a + b
            }
            // Teste
            XCTAssertEqual(add(a: 2, b: 3), 5)
            """)
            Divider()
            Text("2. Testando uma Classe:")
            Text("""
            class Counter {
                var count = 0
                func increment() {
                    count += 1
                }
            }
            // Teste
            let counter = Counter()
            counter.increment()
            XCTAssertEqual(counter.count, 1)
            """)
            Divider()
            Text("3. Testando Erros Lançados:")
            Text("""
            enum MyError: Error {
                case errorOccurred
            }
            
            func throwError() throws {
                throw MyError.errorOccurred
            }
            
            // Teste
            XCTAssertThrowsError(try throwError())
            """)
            Divider()
            Text("4. Testando Assincronismo:")
            Text("""
            func fetchData(completion: @escaping (String) -> Void) {
                DispatchQueue.global().async {
                    sleep(1) // Simulando uma chamada de rede
                    completion(\"Data loaded\")
                }
            }
            
            // Teste Assíncrono
            let expectation = XCTestExpectation(description: \"Fetch data\")
            fetchData { data in
                XCTAssertEqual(data, \"Data loaded\")
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 2)
            """)
            Divider()
            Text("5. Testando UI Elements:")
            Text("""
            class MyViewController: UIViewController {
                var button: UIButton!
                override func viewDidLoad() {
                    super.viewDidLoad()
                    button = UIButton()
                }
            }
            
            // Teste
            let vc = MyViewController()
            XCTAssertNotNil(vc.button)
            """)
        }
    }
}

extension TopicView {
    // MARK: - Exemplos de Xcode

    func xcodeExamples() -> some View {
        Group {
            Text("1. Criando um Novo Projeto:")
            Text("""
            Abra o Xcode e selecione 'Create a new Xcode project'. Escolha o template desejado, como 'App' sob 'iOS'.
            """)
            Divider()
            Text("2. Usando o Interface Builder:")
            Text("""
            Arraste e solte elementos de interface, como UILabels e UIButtons, diretamente na sua storyboard. Conecte-os com IBOutlet e IBAction.
            """)
            Divider()
            Text("3. Depuração com Breakpoints:")
            Text("""
            Clique na margem esquerda do código para adicionar um breakpoint. Isso interrompe a execução do código, permitindo que você inspecione variáveis.
            """)
            Divider()
            Text("4. Usando o Console do Xcode:")
            Text("""
            Utilize o console de depuração para executar comandos, imprimir logs ou interagir com o aplicativo em execução.
            """)
            Divider()
            Text("5. Testes Unitários no Xcode:")
            Text("""
            Crie uma nova classe de teste: File -> New -> File -> Unit Test Case. Implemente os métodos de teste usando XCTest.
            """)
            Divider()
            Text("6. Usando o Xcode Source Control:")
            Text("""
            Integre o Git ao seu projeto usando Source Control no Xcode. Você pode fazer commits, push e pull diretamente da IDE.
            """)
            Divider()
            Text("7. Analisando a Performance com Instruments:")
            Text("""
            Use o menu Product -> Profile para iniciar o Instruments. Escolha um template, como Time Profiler, para analisar o desempenho do aplicativo.
            """)
            Divider()
            Text("8. Gerenciamento de Dependências com CocoaPods:")
            Text("""
            Instale CocoaPods e crie um Podfile para gerenciar dependências. Execute 'pod install' no terminal para instalar as bibliotecas.
            """)
            Divider()
            Text("9. Usando Swift Package Manager:")
            Text("""
            Adicione pacotes Swift ao seu projeto pelo menu File -> Swift Packages -> Add Package Dependency e insira a URL do repositório.
            """)
            Divider()
            Text("10. Criando e Usando Configurações de Build:")
            Text("""
            Acesse as configurações de build do projeto em 'Build Settings' para ajustar opções como arquitetura, versão de iOS e propriedades de compilação.
            """)
        }
    }
}
