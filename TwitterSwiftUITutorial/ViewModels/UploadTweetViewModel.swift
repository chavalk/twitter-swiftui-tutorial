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
        guard let user = AuthViewModel.shared.user else { return }
        let docRef = COLLECTION_TWEETS.document()
        
        let data: [String: Any] = ["uid": user.id, "caption": caption, "fullName": user.fullName, "timestamp": Timestamp(date: Date()), "username": user.username, "profileImageUrl": user.profileImageUrl, "likes": 0, "id": docRef.documentID]
        
        docRef.setData(data) { _ in
            print("DEBUG: Successfully uploaded tweet...")
        }
    }
}
