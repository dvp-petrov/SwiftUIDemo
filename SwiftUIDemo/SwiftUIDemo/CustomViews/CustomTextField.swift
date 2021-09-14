//
//  CustomTextField.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 4.09.21.
//

import SwiftUI

struct CustomTextField: View {
    
    var placeholder: String = ""
    @Binding var text: String
    
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
    
    struct CustomTextFieldHolder: View {
        @State private var text: String = ""
        
        var body: some View {
            CustomTextField(placeholder: "Placeholder", text: $text)
        }
    }
    
    static var previews: some View {
        CustomTextFieldHolder()
    }
}
