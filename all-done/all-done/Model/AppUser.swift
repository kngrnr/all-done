//
//  AppUser.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/24/23.
//

import FirebaseFirestoreSwift

struct AppUser: Identifiable, Decodable {
    
    @DocumentID var id: String?
    let uid: String
    let firstName: String	
    let lastName: String
    let email: String
    
    var isCurrentUser: Bool {
        return AuthViewModel.shared.userSession?.uid == id
    }
}
