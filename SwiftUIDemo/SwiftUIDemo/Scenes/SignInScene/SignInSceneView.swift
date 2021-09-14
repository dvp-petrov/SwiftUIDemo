//
//  SignInSceneView.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 4.09.21.
//

import SwiftUI

struct SignInSceneView: View {

    @State private var emailText: String = ""
    @State private var passwordText: String = ""
    private let defaultVerticalSpacing: CGFloat = 20
    
    var body: some View {
        ZStack {
            VStack {
                headerImage
                Spacer()
            }
            VStack {
                HStack {
                    BackButtonView()
                        .padding(.top, 50)
                        .padding(.leading, 20)
                    Spacer()
                }
                Spacer()
            }
            VStack {
                contentViews
                    .padding(.top, 133)
                Spacer()
            }
            VStack {
                Spacer()
                AlreadyAnUserButton(title: "SIGN UP", action: {})
                .padding(.bottom, 60)
            }
        }
        .ignoresSafeArea(edges: .vertical)
    }
    
    private var headerImage: some View {
        Image("sign_in_header")
            .resizable()
            .scaledToFit()
            .opacity(0.1)
    }
    
    private var contentViews: some View {
        VStack(spacing: defaultVerticalSpacing) {
            Text("Welcome Back!")
                .font(.custom(.helveticaNeueBold, size: 28))
                .foregroundColor(.outerSpace)
                .padding(.bottom, 13)
            socialButtons
            Text("OR LOG IN WITH EMAIL")
                .font(.custom(.helveticaNeueBold, size: 14))
                .foregroundColor(.darkGray)
                .padding(.vertical, 20)
            textFields
            signInButtons
                .padding(.top, 10)
        }
        .padding(.horizontal, 20)
    }
    
    private var socialButtons: some View {
        VStack(spacing: defaultVerticalSpacing) {
            Button(action: {}) {
                FacebookLoginButtonView()
            }
            Button(action: {}) {
                GoogleLoginButtonView()
            }
        }
    }
    
    private var textFields: some View {
        VStack(spacing: defaultVerticalSpacing) {
            CustomTextField(placeholder: "Email address", text: $emailText)
            CustomTextField(placeholder: "Password", text: $emailText)
        }
    }
    
    private var signInButtons: some View {
        VStack(spacing: defaultVerticalSpacing) {
            WideRoundedButton(title: "LOG IN", action: {})
            Button(action: {}) {
                Text("Forgot Password?")
            }
            .foregroundColor(.outerSpace)
        }
        .font(.custom(.helveticaNeueMedium, size: 14))
    }
    
}


struct SignInSceneView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SignInSceneView()
        }
    }
}
