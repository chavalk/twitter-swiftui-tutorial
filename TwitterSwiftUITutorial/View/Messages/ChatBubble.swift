//
//  ChatBubble.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/14/23.
//

import SwiftUI

struct ChatBubble: Shape {
    var isFromCurrentUser: Bool
    
    func path(in rect: CGRect) -> Path {
        <#code#>
    }
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(isFromCurrentUser: false)
    }
}
