//
//  AuthenticateButtonView.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/23/23.
//

import SwiftUI

struct AuthenticateButtonView: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 360, height: 50)
            .background(Color.blue.opacity(0.8))
            .clipShape(Capsule())
    }
}

struct AuthenticateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticateButtonView(text: "Sign in")
    }
}
