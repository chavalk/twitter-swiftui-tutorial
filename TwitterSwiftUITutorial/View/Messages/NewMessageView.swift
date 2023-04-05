//
//  NewMessageView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/16/23.
//

import SwiftUI

struct NewMessageView: View {
    @State var searchText = ""
    @Binding var show: Bool
    @Binding var startChat: Bool
    @Binding var user: User?
    @ObservedObject var viewModel = SearchViewModel(config: .newMessage)
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack(alignment: .leading) {
                ForEach(searchText.isEmpty ? viewModel.users : viewModel.filteredUsers(searchText)) { user in
                    HStack { Spacer() }
                    
                    Button {
                        self.show.toggle()
                        self.startChat.toggle()
                        self.user = user
                    } label: {
                        UserCell(user: user)
                    }

                }
            }
            .padding(.leading)
        }
    }
}

//struct NewMessageView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewMessageView(show: .constant(true), startChat: .constant(true))
//    }
//}
