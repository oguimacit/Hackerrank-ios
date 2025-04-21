//
//  CandidatesView.swift
//  Hackerrank
//
//  Created by rafael on 21/04/25.
//
import SwiftUI

struct CandidatesView: View {
    @StateObject private var viewModel = CandidatesViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.topTenPeople(), id: \.id) { person in
                    HStack {
                        Text(person.name)
                        Spacer()
                        Text(String(format: "%.2f", person.score))
                    }
                }
                .navigationTitle("Melhores Candidatos")
            }
        }
    }
}

#Preview {
    CandidatesView()
}
