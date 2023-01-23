//
//  LogoView.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/18/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack {
            Image("LoginLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text("All Done")
                .foregroundColor(.white)
                .font(.system(size: 25))
                .fontWeight(.semibold)
            
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView()
            LogoView()
        }
    }
}
