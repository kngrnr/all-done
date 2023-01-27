//
//  TODOTextField.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/27/23.
//

import SwiftUI

struct TODOTextField: View {
    
    @Binding var text: String
    let placeHolder: String
    
    var body: some View {
        CustomTextField(text: $text, placeHolder: Text(placeHolder), imageName: "checkmark.square", foreGroundColor: .gray)
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
    }
}

struct TODOTextField_Previews: PreviewProvider {
    static var previews: some View {
        TODOTextField(text: .constant(""), placeHolder: "Title")
    }
}
