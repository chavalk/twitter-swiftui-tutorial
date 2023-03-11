//
//  TweetCell.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/11/23.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(56 / 2)
                    .padding(.leading)
            }
        }
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
