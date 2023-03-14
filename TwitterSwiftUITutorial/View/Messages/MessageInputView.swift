//
//  MessageInputView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/14/23.
//

import SwiftUI

struct MessageInputView: View {
    var body: some View {
        HStack {
            TextField("message", text: <#T##Binding<String>#>)
        }
    }
}

struct MessageInputView_Previews: PreviewProvider {
    static var previews: some View {
        MessageInputView()
    }
}
