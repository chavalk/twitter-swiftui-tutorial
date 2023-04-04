//
//  FeedViewModel.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 4/3/23.
//

import SwiftUI

class FeedViewModel: ObservableObject {
    @Published var tweets = [Tweet]()
    
    init() {
        fetchTweets()
    }
    
    func fetchTweets() {
        
    }
}
