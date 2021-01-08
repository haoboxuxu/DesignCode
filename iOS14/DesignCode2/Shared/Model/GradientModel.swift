//
//  GradientModel.swift
//  DesignCodeUniversal
//
//  Created by Meng To on 7/9/20.
//

import SwiftUI

struct GradientModel: Identifiable {
    var id = UUID()
    var color1: Color
    var color2: Color
}

let gradients = [
    GradientModel(color1: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), color2: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))),
    GradientModel(color1: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), color2: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))),
    GradientModel(color1: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), color2: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))),
    GradientModel(color1: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), color2: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))),
    GradientModel(color1: Color(#colorLiteral(red: 1, green: 0.2372547686, blue: 0.2905043662, alpha: 1)), color2: Color(#colorLiteral(red: 1, green: 0.3843648434, blue: 0.6932035685, alpha: 1))),
    GradientModel(color1: Color(#colorLiteral(red: 0.2937400341, green: 0, blue: 0.8942368627, alpha: 1)), color2: Color(#colorLiteral(red: 0.5658400655, green: 0.415163815, blue: 0.9316975474, alpha: 1))),
    GradientModel(color1: Color(#colorLiteral(red: 0, green: 0.4841632247, blue: 1, alpha: 1)), color2: Color(#colorLiteral(red: 0, green: 0.6239914894, blue: 1, alpha: 1))),
    GradientModel(color1: Color(#colorLiteral(red: 0, green: 0.736463666, blue: 1, alpha: 1)), color2: Color(#colorLiteral(red: 0.5029546022, green: 0.933009088, blue: 0.8488840461, alpha: 1)))
]
