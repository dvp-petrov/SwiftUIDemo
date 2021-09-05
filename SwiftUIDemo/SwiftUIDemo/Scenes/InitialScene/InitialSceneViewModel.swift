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
    
    init(titleText: String = "We are what we do",
         descriptionText: String = "Thousand of people are using silent moon\nfor small meditations") {
        self.titleText = titleText
        self.descriptionText = descriptionText
    }
    
    func signUp() {
    }
    
    func logIn() {
    }
    
}
