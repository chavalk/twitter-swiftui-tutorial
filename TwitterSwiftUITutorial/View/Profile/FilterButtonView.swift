//
//  FilterButtonView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/17/23.
//

import SwiftUI

enum TweetFilterOptions: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Likes"
        }
    }
}

struct FilterButtonView: View {
    @Binding var selectedOption: TweetFilterOptions
    
    private let underlineWidth = UIScreen.main.bounds.width / CGFloat(TweetFilterOptions.allCases.count)
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ForEach(TweetFilterOptions.allCases, id: \.self) { option in
                    Button {
                        
                    } label: {
                        Text(option.title)
                            .frame(width: underlineWidth)
                    }

                }
            }
            
            Rectangle()
                .frame(width: underlineWidth, height: 3)
                .foregroundColor(.blue)
                .animation(.spring())
        }
    }
}

struct FilterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonView()
    }
}
