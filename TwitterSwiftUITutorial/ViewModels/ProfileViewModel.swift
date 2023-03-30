//
//  ProfileViewModel.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/30/23.
//

import SwiftUI
import Firebase

class ProfileViewModel: ObservableObject {
    @Published var isFollowed = false
    
    func follow() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
    }
    
    func unfollow() {
        
    }
}
