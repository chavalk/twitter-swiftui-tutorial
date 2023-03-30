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
    
    func follow(uid: String) {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        
        COLLECTION_FOLLOWING.document(currentUid).collection("user-following").document(uid).setData([:]) { _ in
            COLLECTION_FOLLOWERS.document(uid).collection("user-followers").document(currentUid).setData([:]) { _ in
                self.isFollowed = true
            }
        }
    }
    
    func unfollow() {
        
    }
}
