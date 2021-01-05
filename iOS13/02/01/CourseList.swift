//
//  CourseList.swift
//  02
//
//  Created by 徐浩博 on 2020/4/7.
//  Copyright © 2020 徐浩博. All rights reserved.
//

import SwiftUI

struct CourseList: View {
    @State var courses = courseData
    //@ObservedObject var store = CourseStore()
    @State var active = false
    @State var activeIndex = -1
    @State var activeView = CGSize.zero
    
    var body: some View {
        ZStack {
            Color.black.opacity(Double(self.activeView.height / 500))
                .animation(.linear)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 30) {
                    Text("Courses")
                        .font(.largeTitle).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                        .padding(.top, 30)
                        .blur(radius: active ? 20 : 0)
                    
                    ForEach(courses.indices, id: \.self) { index in
                        GeometryReader { geometryReader in
                            CourseView(
                                show: self.$courses[index].show,
                                course: self.courses[index],
                                active: self.$active,
                                index: index,
                                activeIndex: self.$activeIndex,
                                activeView: self.$activeView
                            )
                                .offset(y: self.courses[index].show ? -geometryReader.frame(in: .global).minY : 0)
                                .opacity(self.activeIndex != index && self.active ? 0 : 1)
                                .scaleEffect(self.activeIndex != index && self.active ? 0.5 : 1)
                                .offset(x: self.activeIndex != index && self.active ? screen.width : 0)
                        }
                        .frame(height: 280)
                        .frame(maxWidth: self.courses[index].show ? .infinity : screen.width - 60)
                        .zIndex(self.courses[index].show ? 1 : 0)
                    }
                }
                .frame(width: screen.width)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            }
            .statusBar(hidden: active ? true : false)
            .animation(.linear)
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}

struct CourseView: View {
    @Binding var show: Bool
    var course: Cource
    @Binding var active: Bool
    var index: Int
    @Binding var activeIndex: Int
    @Binding var activeView: CGSize
    
    var body: some View {
        
        ZStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 30.0) {
                Text("Design Code is fun. This is haoboxuxu learning SwiftUI to be pro. haoboxuxu has app on the App Store. Search Machine Learning hub")
                Text("About Machine Learning hub")
                    .font(.title).bold()
                
                Text("Design Code is fun. This is haoboxuxu learning SwiftUI to be pro. haoboxuxu has app on the App Store. Search Machine Learning hub!Design Code is fun. This is haoboxuxu learning SwiftUI to be pro. haoboxuxu has app on the App Store. Search Machine Learning hub.Design Code is fun. This is haoboxuxu learning SwiftUI to be pro. haoboxuxu has app on the App Store. Search Machine Learning hub")
                
                Text("Design Code is fun. This is haoboxuxu learning SwiftUI to be pro. haoboxuxu has app on the App Store. Search Machine Learning hub, Design Code is fun. This is haoboxuxu learning SwiftUI to be pro. haoboxuxu has app on the App Store. Search Machine Learning hub")
            }
            .padding(30)
            .frame(maxWidth: show ? .infinity : screen.width - 60, maxHeight: show ? .infinity : 280, alignment: .top)
            .offset(y: show ? 460 : 0)
            .background(Color("background2"))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .opacity(show ? 1 : 0)
            
            
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8.0) {
                        Text(course.title)
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        Text(course.subtitle)
                            .foregroundColor(Color.white.opacity(0.7))
                    }
                    Spacer()
                    ZStack {
                        Image(uiImage: course.logo)
                            .opacity(show ? 0 : 1)
                        VStack {
                            Image(systemName: "xmark")
                                .font(.system(size: 16 , weight: .medium))
                                .foregroundColor(.white)
                        }
                        .frame(width: 36, height: 36)
                        .background(Color.black)
                        .clipShape(Circle())
                        .opacity(show ? 1 : 0)
                    }
                    
                }
                Spacer()
                Image(uiImage: course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .frame(height: 140, alignment: .top)
            }
            .padding(show ? 30 : 20)
            .padding(.top, show ? 30 : 0)
                //.frame(width: show ? screen.width : screen.width - 60, height: show ? screen.height : 280)
                .frame(maxWidth: show ? .infinity : screen.width - 60, maxHeight: show ? 460 : 280)
                .background(Color(course.color))
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color(course.color).opacity(0.3), radius: 20, x: 0, y: 20)
                .gesture(
                    show ?
                        DragGesture().onChanged { value in
                            guard value.translation.height < 300 else { return }
                            guard value.translation.height > 0 else { return }
                            self.activeView = value.translation
                        }
                        .onEnded { value in
                            if self.activeView.height > 50 {
                                self.show = false
                                self.active = false
                                self.activeIndex = -1
                            }
                            self.activeView = .zero
                        }
                        : nil
            )
                .onTapGesture {
                    self.show.toggle()
                    self.active.toggle()
                    if self.show {
                        self.activeIndex = self.index
                    }else {
                        self.activeIndex = -1
                    }
            }
            
            if show {
                //CourseDetail(course: course, show: $show, active: $active, activeIndex: $activeIndex)
                    //.background(Color.white)
                    //.animation(nil)
            }
        }
        .frame(height: show ? screen.height : 280)
        .scaleEffect(1 - self.activeView.height / 1000)
        .rotation3DEffect(Angle(degrees: Double(self.activeView.height / 10)), axis: (x: 0, y: 10.0, z: 0))
        //.hueRotation(Angle(degrees: Double(self.activeView.height)))
        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        .gesture(
            show ?
                DragGesture().onChanged { value in
                    guard value.translation.height < 300 else { return }
                    guard value.translation.height > 0 else { return }
                    self.activeView = value.translation
                }
                .onEnded { value in
                    if self.activeView.height > 50 {
                        self.show = false
                        self.active = false
                        self.activeIndex = -1
                    }
                    self.activeView = .zero
                }
                : nil
        )
            .edgesIgnoringSafeArea(.all)
    }
}

struct Cource: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: UIImage
    var logo: UIImage
    var color: UIColor
    var show: Bool
}

var courseData = [
    Cource(title: "About Machine Learning hub", subtitle: "18 Sections", image: #imageLiteral(resourceName: "Card2"), logo: #imageLiteral(resourceName: "Logo1"), color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), show: false),
    Cource(title: "SwiftUI Advanced", subtitle: "20 Sections", image: #imageLiteral(resourceName: "Card6"), logo: #imageLiteral(resourceName: "Logo1"), color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), show: false),
    Cource(title: "Prototype Designs in SwiftUI", subtitle: "20 Sections", image: #imageLiteral(resourceName: "Card5"), logo: #imageLiteral(resourceName: "Logo1"), color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), show: false)
]
