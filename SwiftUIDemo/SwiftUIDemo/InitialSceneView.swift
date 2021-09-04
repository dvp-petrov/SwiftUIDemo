//
//  InitialSceneView.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 3.09.21.
//

import SwiftUI

/*
 TODO: refactor InitialSceneView
 0. Implement buttons view.
 1. Extract fonts in constant reusable manner.
 2. Extract images in constant reusable manner.
 3. Extract colors in constant reusable manner.
 4. Refactor layout for smaller screens?
 5. Consider placing the logoImage(from top) and buttons(from bottom) with smaller padding if there are no safe area insets.
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
            .padding(.bottom, 90)
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
                .font(Font.custom("HelveticaNeue-Bold", size: 30))
                .foregroundColor(Color(red: 63/255, green: 65/255, blue: 78/255, opacity: 1))
            Text("Thousand of people are using silent moon\nfor small meditations")
                .font(Font.custom("HelveticaNeue-Light", size: 16))
                .foregroundColor(Color(red: 161/255, green: 164/255, blue: 178/255))
                .lineSpacing(8)
        }
        .multilineTextAlignment(.center)
    }
    
    private var buttons: some View {
        VStack {
            Text("Buttons")
            Text("Buttons")
            Text("Buttons")
            Text("Buttons")
            Text("Buttons")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InitialSceneView()
    }
}
