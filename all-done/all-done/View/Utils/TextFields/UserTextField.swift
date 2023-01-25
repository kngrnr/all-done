//
//  UserTextField.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/23/23.
//

import SwiftUI

struct UserTextField: View {
    
    @Binding var text: String
    let placeHolder: String
    
    var body: some View {
       CustomTextField(text: $text, placeHolder: Text(placeHolder), imageName: "person")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white )
    }
}

struct UserTextField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView()
            UserTextField(text: .constant(""), placeHolder: "User")
        }
    }
}
