//
//  all_doneApp.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/18/23.
//

import SwiftUI
import FirebaseCore


@main
struct all_doneApp: App {
    
    init() {
        
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel.shared)
        }
    }
}
