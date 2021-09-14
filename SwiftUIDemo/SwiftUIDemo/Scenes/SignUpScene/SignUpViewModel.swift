//
//  SignUpViewModel.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 13.09.21.
//

import Foundation

class SignUpViewModel: SignUpViewModelProtocol {
    
    
    @Published var usernameText: String = ""
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    @Published var isPrivacyPolicyChecked: Bool = true
    
    
}
