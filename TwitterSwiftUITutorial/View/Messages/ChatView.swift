//
//  ChatView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/14/23.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ForEach(0..<15) { _ in
                        Text("Chat bubble")
                    }
                }
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
