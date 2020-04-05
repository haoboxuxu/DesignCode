//
//  HomeView.swift
//  01
//
//  Created by 徐浩博 on 2020/4/5.
//  Copyright © 2020 徐浩博. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @Binding var showProfile: Bool
    var body: some View {
        VStack {
            HStack {
                Text("Watching")
                    .font(.system(size: 28, weight: .bold))
                Spacer()
                MeView(showProfile: $showProfile)
            }
            .padding(.horizontal)
            .padding(.leading, 14)
            .padding(.top, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(sectionData) { item in
                        SctionView(section: item)
                    }
                }
                .padding(30)
                .padding(.bottom, 30)
            }
            
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(false))
    }
}

struct SctionView: View {
    
    var section: Section
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.tittle)
                    .font(.system(size: 24, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                Spacer()
                Image(section.logo)
            }
            Text(section.text.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
            
            section.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:210)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .frame(width: 275, height: 275)
        .background(section.color)
        .cornerRadius(30)
        .shadow(color: Color("card1").opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

struct Section: Identifiable {
    var id = UUID()
    var tittle: String
    var text: String
    var logo: String
    var image: Image
    var color: Color
}

let sectionData = [
    Section(tittle: "Prototype design in SwiftUI", text: "18 Section", logo: "Logo1", image: Image("Card1"), color: Color("card1")),
    Section(tittle: "Build a SwiftUI app", text: "20 Section", logo: "Logo1", image: Image("Card1"), color: Color("card1")),
    Section(tittle: "SwiftUI Advanced", text: "20 Section", logo: "Logo1", image: Image("Card1"), color: Color("card1"))
]
