//
//  Message.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/15/23.
//

import Foundation

struct MockMessage: Identifiable {
    let id: Int
    let imageName: String
    let messageText: String
    let isCurrentUser: Bool
}
