

import Foundation

class CardsViewModel: ObservableObject {
    @Published var cardModels = [CardModel]()
    
    private let service: CardService  // Assuming this should match your earlier CardService
    
    init(service: CardService) {
        self.service = service
        Task { await fetchCards()}
    }
    
    func fetchCards() async {
        do {
            self.cardModels = try await service.fetchCards()
        } catch {
            print("DEBUG: Error fetching cards: \(error)")
        }
    }
}


