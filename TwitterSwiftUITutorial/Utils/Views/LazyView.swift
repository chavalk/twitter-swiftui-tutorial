//
//  LazyView.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 4/4/23.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}

//struct LazyView_Previews: PreviewProvider {
//    static var previews: some View {
//        LazyView()
//    }
//}
