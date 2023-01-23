//
//  CustomTextField.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/23/23.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    let placeHolder: Text
    let imageName: String
    var foreGroundColor: Color?
    
    var body: some View {
    
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeHolder
                    .foregroundColor(foreGroundColor ?? Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 40)
            }
            
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(foreGroundColor ?? .white)
                
                TextField("", text: $text)
                    .autocapitalization(.none)
            }
        }
        
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            CustomTextField(text: .constant(""), placeHolder: Text("Email"), imageName: "envelope")
            
            
        }
    }
}
