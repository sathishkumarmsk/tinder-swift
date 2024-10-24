//
//  CardService.swift
//  Tinder
//
//  Created by Sathish on 24/10/24.
//

import Foundation

struct CardService {
    func fetchCards() async throws -> [CardModel] {
        let users = MockData.mockUsers
        return users.map { CardModel(user: $0) } // Fixed closure syntax
    }
}

