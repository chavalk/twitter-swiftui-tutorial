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
    }
    
    func unlikeTweet() {
        
    }
}
