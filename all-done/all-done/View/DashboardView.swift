//
//  DashboardView.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/25/23.
//

import SwiftUI

struct DashboardView: View {
    
    let user: AppUser
        
    var body: some View {
        VStack {
            Text("DashboardView")
            Button {
                AuthViewModel.shared.signout()
            } label: {
                Text("Logout")
            }
            .padding()
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(user: appUser01)
    }
}
