//
//  SearchViewModel.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/29/23.
//

import SwiftUI
import Firebase

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        
    }
}
