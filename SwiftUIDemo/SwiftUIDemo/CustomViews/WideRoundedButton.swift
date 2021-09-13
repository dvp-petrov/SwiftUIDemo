//
//  WideRoundedButton.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 4.09.21.
//

import SwiftUI

struct WideRoundedButton: View {
    
    var title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            CapsuledButtonView(text: title)
        }
    }
    
}

struct WideRoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        WideRoundedButton(title: "Title", action: {})
    }
}
