//
//  ConversationsViewModel.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 4/5/23.
//

import SwiftUI

class ConversationsViewModel: ObservableObject {
    @Published var recentMessages = [Message]()
}
