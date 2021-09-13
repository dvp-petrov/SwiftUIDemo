//
//  FacebookLoginButtonView.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 9.09.21.
//

import SwiftUI

struct FacebookLoginButtonView: View {
    var body: some View {
        HStack(spacing: 0) {
            Image("fb_icon")
                .renderingMode(.template)
                .resizable()
                .frame(maxWidth: 24, maxHeight: 24)
                .foregroundColor(.white)
                .padding(.horizontal, 34)
            Text("CONTINUE WITH FACEBOOK")
                .foregroundColor(.magnolia)
                .font(.custom(.helveticaNeueMedium, size: 14))
            Spacer()
        }
        .frame(maxWidth: .infinity,
               maxHeight: 63)
        .background(Color.ube)
        .clipShape(Capsule())
    }
}

struct FacebookLoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FacebookLoginButtonView()
    }
}
