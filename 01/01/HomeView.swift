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
            .padding(.top, 30)
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(false))
    }
}
