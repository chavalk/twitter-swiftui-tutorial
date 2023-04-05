//
//  MessageInputView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/14/23.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var messageText: String
    var action: () -> Void
    
    var body: some View {
        HStack {
            TextField("Message...", text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight: 30)
            
            Button(action: action) {
                Text("Send")
                    .bold()
                    .foregroundColor(.blue)
            }
        }
    }
}

//struct MessageInputView_Previews: PreviewProvider {
//    static var previews: some View {
//        MessageInputView(messageText: .constant("Message..."))
//    }
//}
