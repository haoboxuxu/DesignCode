//
//  ContentView.swift
//  01
//
//  Created by 徐浩博 on 2020/4/3.
//  Copyright © 2020 徐浩博. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            TittleView()
            
            BackCardView()
                .background(Color("card4"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -40)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: 10))
                .rotation3DEffect(Angle(degrees: 10), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
            BackCardView()
                .background(Color("card3"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -20)
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees: 5))
                .rotation3DEffect(Angle(degrees: 5), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
            
            CardView()
                .blendMode(.hardLight)
            
            
            ButtomCardView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("UI Design")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text("Certificate")
                        .foregroundColor(Color("accent"))
                }
                Spacer()
                Image("Logo1")
            }
            .padding()
            Spacer()
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 110, alignment: .top)
        }
        .frame(width: 340, height: 220)
        .background(Color.black)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 340, height: 220)
    }
}

struct TittleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Certificate")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            Image("Background1")
            Spacer()
        }
    }
}

struct ButtomCardView: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 40, height: 5)
                .cornerRadius(3)
                .opacity(0.1)
            Text("Design Code is fun. This is haoboxuxu learning SwiftUI to be pro. haoboxuxu has app on the App Store. Search Machine Learning hub")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4)
            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        .offset(x: 0, y: 500)
    }
}
