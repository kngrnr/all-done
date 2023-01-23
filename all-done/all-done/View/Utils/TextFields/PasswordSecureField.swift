//
//  PasswordSecureField.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/23/23.
//

import SwiftUI

struct PasswordSecureField: View {
    
    @Binding var text: String
    let placeHolder: String
    
    var body: some View {
        CustomSecureField(text: $text, placeHolder: Text(placeHolder))
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
        
    }
}

struct PasswordSecureField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView()
            PasswordSecureField(text: .constant(""), placeHolder: "Password")
        }
    }
}
