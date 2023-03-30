//
//  UserProfileView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/17/23.
//

import SwiftUI

struct UserProfileView: View {
    @State var selectedFilter: TweetFilterOptions = .tweets
    let user: User
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
                
                ForEach(0..<9) { tweet in
                    TweetCell()
                        .padding()
                }
            }
            
            .navigationTitle("batman")
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
