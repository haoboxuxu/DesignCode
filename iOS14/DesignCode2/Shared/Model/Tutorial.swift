//
//  Tutorial.swift
//  iOS
//
//  Created by Meng To on 7/3/20.
//

import SwiftUI

struct Tutorial: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var color: Color
    var image: String
    var progress: CGFloat
}

var tutorials = [
    Tutorial(
        title: "The SwiftUI Handbook",
        subtitle: "SwiftUI is hands-down the best way for designers to take a first step into code. Thanks to its live Preview, you can iterate quickly and create powerful user interfaces with a few lines of code that works for all of Apple's platforms. Take your static design to the next level and build real apps with the simplicity of a prototyping tool.",
        color: Color(#colorLiteral(red: 0.2235294118, green: 0.07450980392, blue: 0.7215686275, alpha: 1)),
        image: "Logo SwiftUI",
        progress: 85.0
    ),
    Tutorial(
        title: "The Figma Handbook",
        subtitle: "Only a few years ago, Figma came out as the first design tool that utilized the power and accessibility of the Web while promising the same powerful features you’d expect from a native app. They surprised everyone with their real-time collaboration. Designers were ecstatic to finally be able to share their designs to their coworkers and clients with zero friction, and see multiple mouse pointers drawing shapes simultaneously. It was like magic.",
        color: Color(#colorLiteral(red: 1, green: 0.3529411765, blue: 0.4274509804, alpha: 1)),
        image: "Logo Figma",
        progress: 10.0
    ),
    Tutorial(
        title: "The UI Design Handbook",
        subtitle: "Many design courses focus on the finer details, heavy theories, getting you to the 99% of being a visual designer, but often disregard the code and handoff aspect. They end up alienating developers who just wish to learn the essentials. If you're looking to learn just enough UI design to be 100% self-sufficient and collaborate better with designers, this course if for you.",
        color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),
        image: "Logo UI Design",
        progress: 30.0
    ),
    Tutorial(
        title: "The Sketch Handbook",
        subtitle: "Sketch is a design tool entirely vector-based and focused on user interface design. It’s easy to pick up and costs a fraction of the price of Photoshop. Because of its simplicity, anyone with little to no training can learn Sketch. On top of that, it’s perfect for today’s need for designing for multiple devices.",
        color: Color(#colorLiteral(red: 1, green: 0.5838500857, blue: 0, alpha: 1)),
        image: "Logo Sketch",
        progress: 50.0
    ),
    Tutorial(
        title: "The React Handbook",
        subtitle: "React is component-based, similar to how you use Components in Figma in order to reuse the elements in powerful ways. This in turn allows for better collaboration between teammates. With this course, you'll learn how to build and animate your site from scratch. Create highly customizable components for your design system.",
        color: Color(#colorLiteral(red: 0, green: 0.8117647059, blue: 0.9921568627, alpha: 1)),
        image: "Logo React",
        progress: 50.0
    ),
    Tutorial(
        title: "The Framer Handbook",
        subtitle: "Framer makes it incredibly easy to add complex user interactions inside your prototype, taking your design and code components to the next level. Playground allows you to quickly test new concepts within the all-new in-app code editor. You can combine your current app flow with new code components created in Playground.",
        color: Color(#colorLiteral(red: 0, green: 0.6002155542, blue: 0.9979781508, alpha: 1)),
        image: "Logo Framer",
        progress: 20.0
    ),
    Tutorial(
        title: "The Webflow Handbook",
        subtitle: "Webflow is a design tool that can build production-ready experiences without code. You can implement CSS-driven adaptive layouts, build complex interactions and deploy all in one tool. Webflow also comes with a built-in content management system (CMS) and Ecommerce for creating a purchase experience without the need of third-party tools.",
        color: Color(#colorLiteral(red: 0.261730969, green: 0.3264437318, blue: 1, alpha: 1)),
        image: "Logo Webflow",
        progress: 20.0
    ),
    Tutorial(
        title: "The ProtoPie Handbook",
        subtitle: "ProtoPie is a cross-platform prototyping tool that creates prototypes nearly as powerful as those made with code, with half of the efforts, and zero code. It's perfect for designers who want to quickly experiment with advanced interactions using variables, conditions, sensors and more.",
        color: Color(#colorLiteral(red: 0.9613218904, green: 0.2685908377, blue: 0.4664257169, alpha: 1)),
        image: "Logo ProtoPie",
        progress: 20.0
    )
]
