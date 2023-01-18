//
//  BackgroundGradientView.swift
//  all-done
//
//  Created by King Reiner Antonio on 1/18/23.
//

import SwiftUI

struct BackgroundGradientView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(
                colors: [
                    Color.blue,
                    Color.blue.opacity(0.5),
                ]
            ),
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
}

struct BackgroundGradientView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradientView()
    }
}
