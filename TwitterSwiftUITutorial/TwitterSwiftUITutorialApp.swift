//
//  TwitterSwiftUITutorialApp.swift
//  TwitterSwiftUITutorial
//
//  Created by Jose Garcia on 3/10/23.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUITutorialApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel())
        }
    }
}
