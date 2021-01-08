//
//  Download.swift
//  DesignCodeUniversal
//
//  Created by Meng To on 7/1/20.
//

import SwiftUI

struct Download: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var logo: String
}

var downloadVideos = [
    Download(
        title: "UI Design for iOS 14.zip",
        subtitle: "10 MB",
        logo: "Logo UI Design"
    ),
    Download(
        title: "UI Design for developers.zip",
        subtitle: "32 MB",
        logo: "Logo UI Design"
    ),
    Download(
        title: "SwiftUI Part 1.zip",
        subtitle: "62 MB",
        logo: "Logo SwiftUI"
    ),
    Download(
        title: "SwiftUI Part 2.zip",
        subtitle: "29 MB",
        logo: "Logo SwiftUI"
    )
]

var downloadFigma = [
    Download(
        title: "Angle Free.zip",
        subtitle: "10 MB",
        logo: "Logo Figma"
    ),
    Download(
        title: "Shape Icons Free.zip",
        subtitle: "32 MB",
        logo: "Logo Figma"
    ),
    Download(
        title: "Shape Illustrations Free.zip",
        subtitle: "62 MB",
        logo: "Logo Figma"
    ),
    Download(
        title: "Design+Code 4 UI Kit.zip",
        subtitle: "29 MB",
        logo: "Logo Figma"
    )
]
