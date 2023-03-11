//
//  UserCell.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/11/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image("venom-10")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56)
                .cornerRadius(28)
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
