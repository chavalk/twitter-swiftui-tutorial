//
//  ProfileHeaderView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/17/23.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    @Binding var isFollowed: Bool
    let viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            KFImage(URL(string: viewModel.user.profileImageUrl))
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .cornerRadius(120 / 2)
                .shadow(color: .black, radius: 6, x: 0.0, y: 0.0)
            
            Text(viewModel.user.fullName)
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            
            Text("@\(viewModel.user.username)")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Billionaire by day, dark knight by night")
                .font(.system(size: 14))
                .padding(.top, 8)
            
            HStack(spacing: 40) {
                VStack{
                    Text("\(viewModel.user.stats.followers)")
                        .font(.system(size: 16))
                        .bold()
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                VStack {
                    Text("\(viewModel.user.stats.following)")
                        .font(.system(size: 16))
                        .bold()
                    
                    Text("Following")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            
            ProfileActionButtonView(viewModel: viewModel, isFollowed: $isFollowed)
            
            Spacer()
        }
    }
}

//struct ProfileHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileHeaderView()
//    }
//}
