//
//  CustomTextField.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 4.09.21.
//

import SwiftUI

struct CustomTextField: View {
    
    var placeholder: String = ""
    @State private var text: String = ""
    
    var body: some View {
        TextField("", text: $text)
            .placeholder(when: text.isEmpty) {
                Text(placeholder)
                    .foregroundColor(.darkGray)
            }
            .font(.custom(.helveticaNeueLight, size: 16))
            .foregroundColor(.outerSpace)
            .padding(20)
            .background(Color.munsell)
            .cornerRadius(15)
            .frame(maxHeight: 63)
    }
    
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(placeholder: "Placeholder")
    }
}
