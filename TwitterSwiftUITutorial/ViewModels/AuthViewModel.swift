//
//  AuthViewModel.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/25/23.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    func login() {
        
    }
    
    func registerUser(email: String, password: String, username: String, fullName: String, profileImage: UIImage) {
        
        print("DEBUG: Email is \(email)")
        print("DEBUG: Password is \(password)")
    }
}
