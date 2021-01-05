//
//  Course.swift
//  DesignCode2
//
//  Created by 徐浩博 on 2021/1/2.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
    var color: Color
}

var courses = [
    Course(
        title: "UI Design for iOS 14",
        subtitle: "20 sections",
        image: "Illustration 1",
        color: Color(#colorLiteral(red: 0, green: 0.5217629075, blue: 1, alpha: 1))
    ),
    Course(
        title: "Build a SwiftUI app for iOS 14",
        subtitle: "20 sections",
        image: "Illustration 2",
        color: Color(#colorLiteral(red: 0.3150139749, green: 0, blue: 0.8982304931, alpha: 1))
    ),
    Course(
        title: "UI Design for iPadOS",
        subtitle: "12 sections",
        image: "Illustration 3",
        color: Color(#colorLiteral(red: 0, green: 0.7283110023, blue: 1, alpha: 1))
    ),
    Course(
        title: "UI Design for macOS",
        subtitle: "12 sections",
        image: "Illustration 4",
        color: Color(#colorLiteral(red: 0.9467853904, green: 0.2021691203, blue: 0.3819385171, alpha: 1))
    ),
    Course(
        title: "Build a SwiftUI app for iOS 13",
        subtitle: "60 sections",
        image: "Illustration 5",
        color: Color(#colorLiteral(red: 0.9721538424, green: 0.2151708901, blue: 0.5066347718, alpha: 1))
    ),
    Course(
        title: "Design System in Figma",
        subtitle: "12 sections",
        image: "Illustration 6",
        color: Color(#colorLiteral(red: 1, green: 0.3477956653, blue: 0.3974102139, alpha: 1))
    ),
    Course(
        title: "React for designers",
        subtitle: "12 sections",
        image: "Illustration 7",
        color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
    ),
    Course(
        title: "UI Design for developers",
        subtitle: "20 sections",
        image: "Illustration 8",
        color: Color(#colorLiteral(red: 0.1446507573, green: 0.8378821015, blue: 0.9349924922, alpha: 1))
    )
]
