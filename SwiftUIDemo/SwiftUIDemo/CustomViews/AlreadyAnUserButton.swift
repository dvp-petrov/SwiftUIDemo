//
//  AlreadyAnUserButton.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 4.09.21.
//

import SwiftUI

struct AlreadyAnUserButton: View {
    
    var title: String
    
    var body: some View {
        Button(action: {}) {
            HStack(spacing: 0) {
                Text("ALREADY HAVE AN ACCOUNT? ")
                    .foregroundColor(.darkGray)
                Text(title)
                    .foregroundColor(.carolinaBlue)
            }
        }
        .font(.custom(.helveticaNeueMedium, size: 14))
    }
    
}

struct AlreadyAnUserButton_Previews: PreviewProvider {
    static var previews: some View {
        AlreadyAnUserButton(title: "Action Title")
    }
}
