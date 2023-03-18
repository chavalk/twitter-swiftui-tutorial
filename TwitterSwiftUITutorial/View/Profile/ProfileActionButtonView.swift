//
//  ProfileActionButtonView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/17/23.
//

import SwiftUI

struct ProfileActionButtonView: View {
    let isCurrentUser: Bool
    
    var body: some View {
        Button {
            
        } label: {
            Text("Edit Profile")
                .frame(width: 360, height: 40)
                .background(Color.blue)
                .foregroundColor(.white)
        }
        .cornerRadius(20)
    }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView(isCurrentUser: false)
    }
}
