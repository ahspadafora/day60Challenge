//
//  User.swift
//  day60Challenge
//
//  Created by Amber Spadafora on 1/16/21.
//  Copyright © 2021 Amber Spadafora. All rights reserved.
//

import Foundation

struct Response: Codable {
    var users: [User]
}

struct User: Codable {
    var id: String
    var name: String
    var age: Int
    var company: String
    var email: String
    var address: String
    var about: String
    var tags: [String]
    var friends: [Friend]
    
}
