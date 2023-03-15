//
//  ChatView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/14/23.
//

import SwiftUI

struct ChatView: View {
    @State var messageText: String = ""
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(MOCK_MESSAGES) { message in
                        HStack {
                            Spacer()
                            Text(message.messageText)
                                .padding()
                                .background(Color.blue)
                                .clipShape(ChatBubble(isFromCurrentUser: true))
                                .foregroundColor(.white)
                                .padding(.horizontal)
                        }
                    }
                }
            }
            
            MessageInputView(messageText: $messageText)
                .padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
