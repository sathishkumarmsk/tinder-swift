//
//  MockData.swift
//  Tinder
//
//  Created by Sathish on 24/10/24.
//

import Foundation


struct MockData {
    static let mockUsers: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullname: "Sathish",
            age: 23,
            profileImageURLs: [
                "profileImg1",
                "profileImg2",
                "profileImg3",
                "profileImg4"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Chaal",
            age: 23,
            profileImageURLs: [
                "profileImg2",
                "profileImg4",
//                "profileImg3",
//                "profileImg4"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Pritam",
            age: 23,
            profileImageURLs: [
                "profileImg3",
                "profileImg2",
//                "profileImg3",
//                "profileImg4"
            ]
        ),
    ]
}
