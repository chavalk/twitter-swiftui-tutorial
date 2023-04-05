//
//  User.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/29/23.
//

import Firebase

struct User: Identifiable {
    let id: String
    let username: String
    let profileImageUrl: String
    let fullName: String
    let email: String
    var stats: UserStats
    
    var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == self.id }
    
    init(dictionary: [String: Any]) {
        self.id = dictionary["uid"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.fullName = dictionary["fullName"] as? String ?? ""
        self.stats = UserStats(followers: 0, following: 0)
    }
}

struct UserStats {
    let followers: Int
    let following: Int
}
