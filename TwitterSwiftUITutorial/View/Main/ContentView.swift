//
//  ContentView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/10/23.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var selectedIndex = 0
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                NavigationView {
                    
                    MainTabView(selectedIndex: $selectedIndex)
                        .navigationBarTitle(viewModel.tabTitle(forIndex: selectedIndex))
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarItems(leading: Button(action: {
                            viewModel.signOut()
                        }, label: {
                            if let user = viewModel.user {
                                KFImage(URL(string: user.profileImageUrl))
                                    .resizable()
                                    .scaledToFill()
                                    .clipped()
                                    .frame(width: 32, height: 32)
                                    .cornerRadius(16)
                            }
                        }))
                }
            } else {
                LoginView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
