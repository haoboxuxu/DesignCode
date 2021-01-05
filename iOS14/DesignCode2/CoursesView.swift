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
                        CourseItem(course: item)
                            .matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
                            .frame(height: 200)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    show.toggle()
                                    selectItem = item
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                        isDisabled = true
                                    }
                                }
                            }
                            .disabled(isDisabled)
                    }
                }
                .padding(16)
                .frame(maxWidth: .infinity)
            }
            if selectItem != nil {
                ScrollView {
                    CourseItem(course: selectItem!)
                        .matchedGeometryEffect(id: selectItem!.id, in: namespace)
                        .frame(height: 300)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                show.toggle()
                                selectItem = nil
                                isDisabled = false
                            }
                        }
                    VStack {
                        ForEach(0 ..< 20) { item in
                            CourseRow()
                        }
                    }
                    .padding()
                }
                .background(Color("Background 1"))
                .transition(
                    .asymmetric(
                        insertion: AnyTransition
                                    .opacity.animation(Animation.spring().delay(0.3)),
                        removal: AnyTransition
                                .opacity.animation(.spring()))
                )
                .edgesIgnoringSafeArea(.all)
            }
        }
        
        
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
