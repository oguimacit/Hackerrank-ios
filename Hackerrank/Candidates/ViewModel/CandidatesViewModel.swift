//
//  PeopleViewModel.swift
//  Hackerrank
//
//  Created by rafael on 21/04/25.
//

import SwiftUI

class CandidatesViewModel: ObservableObject {
    @Published var people: [Person] = []
    
    init() {
        generatePeople()
    }
    
    private func generatePeople() {
        people = (1...30).map { index in
            let name = "Candidato \(index)"
            let score = Double.random(in: 0...10).rounded(toPlaces: 2)
            return Person(name: name, score: score)
        }
    }
    
    func topTenPeople() -> [Person] {
        return people.sorted(by: { $0.score > $1.score }).prefix(10).map { $0 }
    }
}

extension Double {
    func rounded(toPlaces places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
