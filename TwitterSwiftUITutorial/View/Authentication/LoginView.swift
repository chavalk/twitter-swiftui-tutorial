//
//  LoginView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/21/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Image("twitter-logo")
                .resizable()
                .scaledToFill()
                .frame(width: 220, height: 100)
                .padding(.top, 44)
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
