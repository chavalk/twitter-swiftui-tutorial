//
//  ImagePicker.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/23/23.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeCoordinator() -> () {
        
    }
}
