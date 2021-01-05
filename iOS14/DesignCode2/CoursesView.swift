//
//  CourseView.swift
//  DesignCode2
//
//  Created by 徐浩博 on 2021/1/1.
//

import SwiftUI

struct CoursesView: View {
    @State var show = false
    @Namespace var namespace
    @State var selectItem: Course? = nil
    @State var isDisabled = false
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(
                    columns: [GridItem(.adaptive(minimum: 160), spacing: 16)],
                    spacing: 16
                ) {
                    ForEach(courses) { item in
                        VStack {
                            CourseItem(course: item)
                                .matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
                                .frame(height: 200)
                                .onTapGesture {
                                    withAnimation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0)) {
                                        show.toggle()
                                        selectItem = item
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                            isDisabled = true
                                        }
                                    }
                                }
                                .disabled(isDisabled)
                        }
                        .matchedGeometryEffect(id: "container\(item.id)", in: namespace, isSource: !show)
                    }
                }
                .padding(16)
                .frame(maxWidth: .infinity)
            }
            .zIndex(1)
            if selectItem != nil {
                ZStack(alignment: .topTrailing) {
                    VStack {
                        ScrollView {
                            CourseItem(course: selectItem!)
                                .matchedGeometryEffect(id: selectItem!.id, in: namespace)
                                .frame(height: 300)
                            VStack {
                                ForEach(0 ..< 20) { item in
                                    CourseRow()
                                }
                            }
                            .padding()
                        }
                    }
                    .background(Color("Background 1"))
                    .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
                    .matchedGeometryEffect(id: "container\(selectItem!.id)", in: namespace)
                    .edgesIgnoringSafeArea(.all)
                    
                    CloseButton()
                        .padding(.trailing, 16)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                show.toggle()
                                selectItem = nil
                                isDisabled = false
                            }
                        }
                }
                .zIndex(2)
            }
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
