//
//  CapsuledButtonView.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 9.09.21.
//

import SwiftUI

struct CapsuledButtonView: View {
    
    var text: String
    var maxWidth: CGFloat = .infinity
    var maxHeight: CGFloat = 63
    var foregroundColor: Color = .magnolia
    var backgroundColor: Color = .violet
    
    var body: some View {
        Text(text)
            .padding(.horizontal, maxHeight / 2)
            .lineLimit(1)
            .foregroundColor(foregroundColor)
            .font(.custom(.helveticaNeueMedium, size: 14))
            .frame(maxWidth: maxWidth, maxHeight: maxHeight)
            .background(backgroundColor)
            .clipShape(Capsule())
    }
}

struct CapsuledButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuledButtonView(text: "TextTextTextTextTextTextTextTextTextTextTextTextTextTextText")
    }
}
