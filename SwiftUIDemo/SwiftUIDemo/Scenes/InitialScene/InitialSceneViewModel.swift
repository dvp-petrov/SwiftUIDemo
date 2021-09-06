//
//  InitialSceneViewModel.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 5.09.21.
//

import Foundation

class InitialSceneViewModel: InitialSceneViewModelProtocol {
        
    @Published var titleText: String
    @Published var descriptionText: String
    @Published var signUpButtonTitle: String
    @Published var logInButtonTitle: String
    
    init(titleText: String = "We are what we do",
         descriptionText: String = "Thousand of people are using silent moon\nfor small meditations",
         signUpButtonTitle: String = "SIGN UP",
         logInButtonTitle: String = "LOG IN") {
        self.titleText = titleText
        self.descriptionText = descriptionText
        self.signUpButtonTitle = signUpButtonTitle
        self.logInButtonTitle = logInButtonTitle
    }
    
    func signUp() {
    }
    
    func logIn() {
    }
    
}
