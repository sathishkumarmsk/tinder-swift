//
//  CardModel.swift
//  Tinder
//
//  Created by Sathish on 24/10/24.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable {
    var id: String { user.id }
}
