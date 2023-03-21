//
//  NewTweetView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/21/23.
//

import SwiftUI

struct NewTweetView: View {
    var body: some View {
        NavigationView {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .cornerRadius(32)
                
                Text("What's happening?")
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
