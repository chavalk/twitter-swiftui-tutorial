//
//  TextArea.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/21/23.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    var body: some View {
        ZStack {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
    }
}

struct TextArea_Previews: PreviewProvider {
    static var previews: some View {
        TextArea(text: .constant(""), placeholder: "Caption here...")
    }
}
