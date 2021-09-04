//
//  Font+custom.swift
//  SwiftUIDemo
//
//  Created by Dimitar V. Petrov on 4.09.21.
//

import SwiftUI

extension Font {
    static func custom(_ customFont: CustomFont,
                       size: CGFloat) -> Font {
        Font.custom(customFont.rawValue, size: size)
    }
}
