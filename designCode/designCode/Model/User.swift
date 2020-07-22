//
//  User.swift
//  designCode
//
//  Created by islam magdy on 7/19/20.
//  Copyright © 2020 islam magdy. All rights reserved.
//

import Foundation
struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var Followers: Int
    var CreatedAt: String
}
