//
//  LivestreamSection.swift
//  DesignCodeUniversal
//
//  Created by Meng To on 7/9/20.
//

import SwiftUI

struct LivestreamSection: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var logo: String
    var color: Color
}

var livestreamSections = [
    LivestreamSection(
        title: "My Design Process",
        subtitle: "Let's design together as we look at design tools and workflows that I use. ",
        logo: "Logo UI Design",
        color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
    ),
    LivestreamSection(
        title: "Colors, Grid, Adaptive Layout",
        subtitle: "Learn how to design an App Widget of different sizes.",
        logo: "Logo UI Design",
        color: Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))
    ),
    LivestreamSection(
        title: "UI Patterns, Visual Hierarchy and Iterations",
        subtitle: "How we can take one UI and make multiple iterations of it by looking at different UI patterns and visual hierarchy.",
        logo: "Logo UI Design",
        color: Color(#colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1))
    ),
    LivestreamSection(
        title: "Prototyping, Animation and Developer Handoff",
        subtitle: "Let's talk about prototyping animations in Figma and Framer and develooper handoff workflows.",
        logo: "Logo UI Design",
        color: Color(#colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1))
    ),
    LivestreamSection(
        title: "UI Design for developers and Design System",
        subtitle: "I'm preparing a course for developers, teaching all I know about UI design and specially catering to those who have a coding background.",
        logo: "Logo UI Design",
        color: Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
    ),
    LivestreamSection(
        title: "iOS 14 Design",
        subtitle: "Let's discuss the strategies for designing for iOS 14, iPadOS and Big Sur",
        logo: "Logo UI Design",
        color: Color(#colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1))
    ),
    LivestreamSection(
        title: "Prototyping from Figma",
        subtitle: "Let's use SwiftUI to quickly prototype interactions from a design in Figma.",
        logo: "Logo SwiftUI",
        color: Color(#colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1))
    ),
    LivestreamSection(
        title: "Peek Scrolling Concept using GeometryReader",
        subtitle: "Let's add a scroll and detect the position to apply animations.",
        logo: "Logo SwiftUI",
        color: Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1))
    ),
    LivestreamSection(
        title: "Design and code for iOS, iPadOS, Big Sur",
        subtitle: "Will discuss design patterns and SwiftUI 2 techniques for iOS, iPadOS and Big Sur.",
        logo: "Logo SwiftUI",
        color: Color(#colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1))
    ),
]
