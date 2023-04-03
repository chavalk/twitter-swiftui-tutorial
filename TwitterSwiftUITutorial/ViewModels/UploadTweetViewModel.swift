//
//  UploadTweetViewModel.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 4/2/23.
//

import SwiftUI
import Firebase

class UploadTweetViewModel: ObservableObject {
    
    func uploadTweet(caption: String) {
        guard let uid = AuthViewModel.shared.userSession?.uid else { return }
        guard let user = AuthViewModel.shared.user else { return }
        
        let data: [String: Any] = ["uid": user.id, "caption": caption, "fullName": user.fullName, "timestamp": Timestamp(date: Date()), "username": user.username, "profileImageUrl": user.profileImageUrl, "likes": 0]
    }
}
