//
//  CardStackView.swift
//  Tinder
//
//  Created by Sathish on 23/10/24.
//

import SwiftUI

struct CardStackView: View {
    @StateObject var viewModel = CardsViewModel(service: CardService()) // Moved the initialization outside the declaration
    
    var body: some View {
        ZStack {
            ForEach(viewModel.cardModels) { card in  // Use id or another unique identifier
                CardView(model: card)
            }
        }
        .onAppear {
            Task {
                await viewModel.fetchCards()  // Ensure that cards are fetched when the view appears
            }
        }
    }
}

#Preview {
    CardStackView()
}

