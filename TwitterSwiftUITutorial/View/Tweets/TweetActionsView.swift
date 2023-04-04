//
//  TweetActionsView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 4/4/23.
//

import SwiftUI

struct TweetActionsView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "bubble.left")
                    .font(.system(size: 16))
                    .frame(width: 32, height: 32)
            }
            
            Spacer()

            Button {
                
            } label: {
                Image(systemName: "arrow.2.squarepath")
                    .font(.system(size: 16))
                    .frame(width: 32, height: 32)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "heart")
                    .font(.system(size: 16))
                    .frame(width: 32, height: 32)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "bookmark")
                    .font(.system(size: 16))
                    .frame(width: 32, height: 32)
            }
        }
        .foregroundColor(.gray)
        .padding(.horizontal)
    }
}

struct TweetActionsView_Previews: PreviewProvider {
    static var previews: some View {
        TweetActionsView()
    }
}
