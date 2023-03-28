//
//  AuthViewModel.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/25/23.
//

import SwiftUI
import Firebase
import FirebaseStorage

class AuthViewModel: ObservableObject {
    
    func login() {
        
    }
    
    func registerUser(email: String, password: String, username: String, fullName: String, profileImage: UIImage) {
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            
            guard let imageData = profileImage.jpegData(compressionQuality: 0.3) else { return }
            let fileName = NSUUID().uuidString
            let storageRef = Storage.storage().reference().child(fileName)
            
            storageRef.putData(imageData) { _, error in
                if let error = error {
                    print("DEBUG: Failed to upload image \(error.localizedDescription)")
                    return
                }
                
                storageRef.downloadURL { url, _ in
                    guard let profileImageUrl = url?.absoluteString else { return }
                }
            }
        }
    }
}
