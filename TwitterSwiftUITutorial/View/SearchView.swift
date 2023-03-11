//
//  SearchView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/11/23.
//

import SwiftUI

struct SearchView: View {
    @Binding var text: String
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(text: .constant("Search..."))
    }
}
