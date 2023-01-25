//
//  SignupView.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/18/23.
//

import SwiftUI

struct SignupView: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    @Environment(\.presentationMode) var mode
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        ZStack {
           BackgroundGradientView()
            VStack {
                LogoView()
                    .padding(.bottom, 25)
                VStack(spacing: 20) {
                    UserTextField(text: $firstName, placeHolder: "First Name")
                    UserTextField(text: $lastName, placeHolder: "Last Name")
                    EmailTextField(text: $email)
                    PasswordSecureField(text: $password, placeHolder: "Password")
                    PasswordSecureField(text: $confirmPassword, placeHolder: "Confirm password")
                    
                }
                .padding(.horizontal, 32)
                
                Button {
                    viewModel.register(withEmail: email, password: password, firstName: firstName, lastName: lastName)
                    
                } label: {
                    AuthenticateButtonView(text: "Sign up")
                        .padding()
                }
                
                Spacer()
                
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    HStack {
                        Text( "Already have an account?")
                            .font(.system(size: 14))
                        Text( "Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    } // end of HStack
                    .foregroundColor(.white)
                }
                .padding(.bottom, 16)
            } // end of VStack
            .padding(.top, 20) 
            //end of VStack
        } // end of ZStack
      
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
