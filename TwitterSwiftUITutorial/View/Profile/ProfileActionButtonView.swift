//
//  ProfileActionButtonView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/17/23.
//

import SwiftUI

struct ProfileActionButtonView: View {
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        if viewModel.user.isCurrentUser {
            Button {
                
            } label: {
                Text("Edit Profile")
                    .frame(width: 360, height: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
            }
            .cornerRadius(20)
        } else {
            HStack {
                Button {
                    viewModel.user.isFollowed ? viewModel.unfollow() : viewModel.follow()
                } label: {
                    Text(viewModel.user.isFollowed ? "Following" : "Follow")
                        .frame(width: 180, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
                .cornerRadius(20)
                
                NavigationLink(destination: ChatView(user: viewModel.user), label: {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color.purple)
                        .foregroundColor(.white)
                })
                .cornerRadius(20)
            }
        }
    }
}

//struct ProfileActionButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileActionButtonView(isCurrentUser: true)
//    }
//}
