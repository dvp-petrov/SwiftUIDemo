//
//  BackButtonView.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 9.09.21.
//

import SwiftUI

struct BackButtonView: View {
    var body: some View {
        Image("arrow")
            .frame(width: 55, height: 55)
            .background(Color.white)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .strokeBorder(lineWidth: 1)
                    .foregroundColor(.isabelline)
            )
    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonView()
    }
}
