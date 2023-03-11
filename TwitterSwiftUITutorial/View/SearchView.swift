//
//  SearchView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/11/23.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack {
                ForEach(0..<10) { _ in
                    UserCell()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
