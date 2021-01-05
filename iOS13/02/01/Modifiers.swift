//
//  Modifiers.swift
//  02
//
//  Created by 徐浩博 on 2020/4/7.
//  Copyright © 2020 徐浩博. All rights reserved.
//

import SwiftUI

struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 12)
            .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
    }
}

struct FontModifier: ViewModifier {
    var style: Font.TextStyle = .body
    
    func body(content: Content) -> some View {
        content
            .font(.system(style, design: .rounded))
    }
}

struct CustomFontModifier: ViewModifier {
    var size: CGFloat = 28
     func body(content: Content) -> some View {
        content.font(.custom("WorkSans-Bold", size: size))
    }
}

