//
//  TopicView+Intermediate+Extensions.swift
//  Hackerrank
//
//  Created by rafael on 15/04/25.
//
import SwiftUI

extension TopicView {
    // MARK: - Exemplos Gerais
    
    func generalExamples() -> some View {
        Group {
            Text("1. Usando UIKit para Criar um UIButton:")
            Text("""
            let button = UIButton(type: .system)
            button.setTitle("Click Me", for: .normal)
            button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)

            @objc func buttonClicked() {
                print("Button was clicked")
            }
            """)
            Divider()
            Text("2. Usando Core Data para Persistência de Dados:")
            Text("""
            // Defina seu modelo de dados no .xcdatamodeld
            // E use o seguinte código para salvar um novo objeto:

            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newItem = Item(context: context)
            newItem.name = "New Item"
            try? context.save()
            """)
            Divider()
            Text("3. Usando URLSession para Requisições de Rede:")
            Text("""
            let url = URL(string: "https://api.example.com/data")!
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    // Processar dados
                }
            }
            task.resume()
            """)
            Divider()
            Text("4. Usando JSONDecoder para Decodificação de JSON:")
            Text("""
            struct Item: Codable {
                let name: String
            }

            let decoder = JSONDecoder()
            let item = try? decoder.decode(Item.self, from: jsonData)
            """)
            Divider()
            Text("5. Usando SwiftUI para Criar uma View de Lista:")
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
            Text("6. Usando Alertas em SwiftUI:")
            Text("""
            @State private var showAlert = false

            var body: some View {
                Button("Show Alert") {
                    showAlert = true
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Alert Title"), message: Text("Alert Message"), dismissButton: .default(Text("OK")))
                }
            }
            """)
            Divider()
            Text("7. Usando SwiftUI para Navegação:")
            Text("""
            NavigationView {
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail")
                }
            }
            """)
            Divider()
            Text("8. Usando Core Location para Obter Localização:")
            Text("""
            import CoreLocation

            class LocationManager: NSObject, CLLocationManagerDelegate {
                let locationManager = CLLocationManager()

                func startTracking() {
                    locationManager.delegate = self
                    locationManager.requestWhenInUseAuthorization()
                    locationManager.startUpdatingLocation()
                }

                func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
                    // Processar localização
                }
            }
            """)
            Divider()
            Text("9. Usando UIKit para Criar uma UITableView:")
            Text("""
            class ViewController: UIViewController, UITableViewDataSource {
                let tableView = UITableView()

                override func viewDidLoad() {
                    super.viewDidLoad()
                    tableView.dataSource = self
                    view.addSubview(tableView)
                }

                func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                    return 10 // Número de linhas
                }

                func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
                    cell.textLabel?.text = "Row \\(indexPath.row)"
                    return cell
                }
            }
            """)
            Divider()
            Text("10. Usando Human Interface Guidelines (HIG):")
            Text("""
            // Consulte as diretrizes de design da Apple para garantir que sua interface do usuário esteja de acordo com os padrões da Apple.
            // Documentação: https://developer.apple.com/design/human-interface-guidelines/
            """)
        }
    }
}
