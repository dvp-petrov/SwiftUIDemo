//
//  CheckmarkView.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 13.09.21.
//

import SwiftUI

struct CheckmarkView: View {
    
    @Binding var isChecked: Bool
    
    var body: some View {
        Button(action: {
            isChecked.toggle()
        }) {
            Image(systemName: isChecked ? "checkmark" : "")
                .renderingMode(.template)
                .foregroundColor(.darkGray)
                .frame(width: 24.17, height: 24.17)
                .background(Color.white)
                .clipShape(
                    RoundedRectangle(cornerRadius: 4)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .strokeBorder(lineWidth: 2)
                        .foregroundColor(.darkGray)
                )
        }
    }
}

struct CheckmarkView_Previews: PreviewProvider {
    
    struct CheckmarkViewHolder: View {
        @State private var isChecked: Bool = true
        
        var body: some View {
            CheckmarkView(isChecked: $isChecked)
        }
    }
    
    static var previews: some View {
        CheckmarkViewHolder()
    }
}
