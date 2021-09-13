//
//  SignUpSceneView.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 9.09.21.
//

import SwiftUI

struct SignUpSceneView: View {
    
    @State private var isPrivacyPolicyChecked: Bool = false
    
    var body: some View {
//        NavigationView {
            VStack(spacing: 0) {
                backButton
                    .padding(.top, 50)
                welcomeMessage
                    .padding(.top, 29)
                    .padding(.bottom, 33)
                socialLoginButtons
                alternativeLoginMessage
                    .padding(.vertical, 40)
                textFields
                privacyPolicy
                    .padding(.top, 20)
                    .padding(.bottom, 30)
                getStartedView
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 20)
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
//        }
    }
    
    private var backButton: some View {
        HStack(spacing: 0) {
            BackButtonView()
            Spacer()
        }
    }
    
    private var welcomeMessage: some View {
        Text("Welcome Back!")
            .font(.custom(.helveticaNeueBold, size: 28))
            .foregroundColor(.outerSpace)
    }
    
    private var socialLoginButtons: some View {
        VStack(spacing: 20) {
            FacebookLoginButtonView()
            GoogleLoginButtonView()
        }
    }
    
    private var alternativeLoginMessage: some View {
        Text("OR LOG IN WITH EMAIL")
            .font(.custom(.helveticaNeueBold, size: 14))
            .foregroundColor(.darkGray)
    }
    
    private var textFields: some View {
        VStack(spacing: 20) {
            Text("text field - username")
            Text("text field - email")
            Text("text field - password")
        }
    }
    
    private var privacyPolicy: some View {
        HStack(spacing: 0) {
            Group {
                Text("I have read the ")
                    .foregroundColor(.darkGray)
                Text("Privacy Policy")
                    .foregroundColor(.ube)
            }
            .font(.custom(.helveticaNeueMedium, size: 14))
            Spacer()
            CheckmarkView(isChecked: $isPrivacyPolicyChecked)
        }
    }
    
    private var getStartedView: some View {
        CapsuledButtonView(text: "GET STARTED")
    }
    
}

struct SignUpSceneView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpSceneView()
    }
}
