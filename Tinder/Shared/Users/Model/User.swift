//
//  User.swift
//  Tinder
//
//  Created by Sathish on 24/10/24.
//

import Foundation

struct User: Identifiable {
    let id: String
    let fullname: String
    var age: Int
    var profileImageURLs: [String]
}
