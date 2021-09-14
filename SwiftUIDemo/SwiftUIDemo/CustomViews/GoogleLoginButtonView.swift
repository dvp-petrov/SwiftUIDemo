//
//  GoogleLoginButtonView.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 9.09.21.
//

import SwiftUI

struct GoogleLoginButtonView: View {
    var body: some View {
        HStack(spacing: 0) {
            Image("google_icon")
                .resizable()
                .frame(maxWidth: 24, maxHeight: 24)
                .padding(.horizontal, 34)
            Text("CONTINUE WITH GOOGLE")
                .foregroundColor(.outerSpace)
                .font(.custom(.helveticaNeueMedium, size: 14))
            Spacer()
        }
        .frame(maxWidth: .infinity,
               minHeight: 63)
        .background(Color.white)
        .overlay(
            Capsule()
                .stroke(lineWidth: 1)
                .foregroundColor(.isabelline)
        )
        .clipShape(Capsule())
    }
}

struct GoogleLoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        GoogleLoginButtonView()
    }
}
