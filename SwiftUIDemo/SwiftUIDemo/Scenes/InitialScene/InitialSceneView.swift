//
//  InitialSceneView.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 3.09.21.
//

import SwiftUI

/*
 TODO: refactor InitialSceneView
 1. Extract images in constant reusable manner.
 2. Refactor layout for smaller screens?
 3. Consider placing the logoImage(from top) and buttons(from bottom) with smaller padding if there are no safe area insets.
 4. Add actions to button views.
 **/

struct InitialSceneView: View {
    
    private let verticalSpacingBetweenImageAndTexts: CGFloat = 30
    @State private var contentImageMaxY: CGFloat = 0
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                contentImage
                Spacer()
            }
            VStack(spacing: 0) {
                logoImage
                Spacer()
            }
            .padding(.top, 50)
            GeometryReader { reader in
                HStack(spacing: 0) {
                    Spacer()
                    texts
                    Spacer()
                }
                .offset(y: contentImageMaxY +
                            verticalSpacingBetweenImageAndTexts)
            }
            VStack {
                Spacer()
                buttons
            }
            .padding(.bottom, 94)
        }
        .ignoresSafeArea()
    }
    
    private var logoImage: some View {
        Image("initial_scene_logo")
    }
    
    private var contentImage: some View {
        Image("initial_scene_content")
            .resizable()
            .scaledToFit()
            .background(GeometryReader { reader in
                Color.clear.onAppear {
                    contentImageMaxY = reader.frame(in: .local).maxY
                }
            })
    }
    
    private var texts: some View {
        VStack(spacing: 15) {
            Text("We are what we do")
                .font(.custom(.helveticaNeueBold, size: 30))
                .foregroundColor(.outerSpace)
            Text("Thousand of people are using silent moon\nfor small meditations")
                .font(.custom(.helveticaNeueLight, size: 16))
                .foregroundColor(.darkGray)
                .lineSpacing(8)
        }
        .multilineTextAlignment(.center)
    }
    
    private var buttons: some View {
        VStack(spacing: 20) {
            WideRoundedButton(title: "SIGN UP")
            .padding(.horizontal, 20)
            AlreadyAnUserButton(title: "LOG IN")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InitialSceneView()
    }
}
