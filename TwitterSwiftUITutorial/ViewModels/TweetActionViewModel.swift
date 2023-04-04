//
//  TweetActionViewModel.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 4/4/23.
//

import Foundation
import Firebase

class TweetActionViewModel: ObservableObject {
    let tweet: Tweet
    
    init(tweet: Tweet) {
        self.tweet = tweet
    }
    
    func likeTweet() {
        guard let uid = AuthViewModel.shared.userSession?.uid else { return }
        let tweetLikesRef = COLLECTION_TWEETS.document(tweet.id).collection("tweet-likes")
        let userLikesRef = COLLECTION_USERS.document(uid).collection("user-likes")
        
        COLLECTION_TWEETS.document(tweet.id).updateData(["likes": tweet.likes + 1])
        
        tweetLikesRef.document(uid).setData([:]) { _ in
            userLikesRef.document(self.tweet.id).setData([:]) { _ in
                <#code#>
            }
        }
    }
    
    func unlikeTweet() {
        
    }
}
