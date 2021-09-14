//
//  SignUpSceneView.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 9.09.21.
//

import SwiftUI

protocol SignUpViewModelProtocol: ObservableObject {
    var usernameText: String { get set }
    var emailText: String { get set }
    var passwordText: String { get set }
    var isPrivacyPolicyChecked: Bool { get set }
}

struct SignUpSceneView<ViewModel: SignUpViewModelProtocol>: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        ScrollView {
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
            .padding(.bottom, 85)
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    private var backButton: some View {
        HStack(spacing: 0) {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                BackButtonView()
            }
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
            CustomTextField(placeholder: "Username", text: $viewModel.usernameText)
            CustomTextField(placeholder: "email", text: $viewModel.emailText)
            CustomTextField(placeholder: "password", text: $viewModel.passwordText)
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
            CheckmarkView(isChecked: $viewModel.isPrivacyPolicyChecked)
        }
    }
    
    private var getStartedView: some View {
        CapsuledButtonView(text: "GET STARTED")
    }
    
}

struct SignUpSceneView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpSceneView(viewModel: SignUpViewModel())
    }
}
