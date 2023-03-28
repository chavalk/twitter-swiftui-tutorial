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
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            
            print("DEBUG: Successfully signed up user...")
        }
    }
}
