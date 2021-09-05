//
//  SignInSceneView.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 4.09.21.
//

import SwiftUI

struct SignInSceneView: View {

    private let defaultVerticalSpacing: CGFloat = 20
    
    var body: some View {
        ZStack {
            VStack {
                headerImage
                Spacer()
            }
            VStack {
                HStack {
                    backButton
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
    
    private var backButton: some View {
        Image("arrow")
            .padding(.horizontal, 18.15)
            .padding(.vertical, 18.5)
            .background(Color.white)
            .overlay(
                Circle().stroke(lineWidth: 1)
                    .foregroundColor(.isabelline)
            )
            .clipShape(Circle())
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
            }
            .frame(maxWidth: .infinity,
                   maxHeight: 63)
            .background(Color.ube)
            .clipShape(Capsule())
            Button(action: {}) {
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
            }
            .frame(maxWidth: .infinity,
                   maxHeight: 63)
            .background(Color.white)
            .overlay(
                Capsule()
                    .stroke(lineWidth: 1)
                    .foregroundColor(.isabelline)
            )
            .clipShape(Capsule())
        }
    }
    
    private var textFields: some View {
        VStack(spacing: defaultVerticalSpacing) {
            CustomTextField(placeholder: "Email address")
            CustomTextField(placeholder: "Password")
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
