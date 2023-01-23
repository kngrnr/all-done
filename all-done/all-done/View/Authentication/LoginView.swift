//
//  LoginView.swift
//  all-done
//
//   Created by King Reiner Antonio on 1/18/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        ZStack {
            BackgroundGradientView()
            
            VStack {
                LogoView()
                    .padding(.bottom, 25)
                    
                
                VStack (spacing: 20) {
                    EmailTextField(text: $email)
                    PasswordSecureField(text: $password, placeHolder: "Password")
                } // end of vstack
                .padding(.horizontal, 32 )
            } //e end of vstack
            
        } // end of Zstack
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
