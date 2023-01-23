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
        
        NavigationView {
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
                    
                    HStack {
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Forgot password")
                                .foregroundColor(.white)
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.top)
                                .padding(.trailing, 32)
                        }
                    } // end of hstack
                    Button {
                        
                    } label: {
                        AuthenticateButtonView(text: "Sign in")
                    }
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: SignupView()
                            .navigationBarHidden(true),
                        label: {
                            HStack {
                                Text("Don't have an account?")
                                    .font(.system(size: 14))
                                Text("Sign up")
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .foregroundColor(.white)
                        }
                    )
                    .padding(.bottom, 16)
                    
                } //end of vstack
                .padding(.top, 70)
            }// end of Zstack
           
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
