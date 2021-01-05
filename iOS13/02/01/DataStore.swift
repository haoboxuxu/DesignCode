//
//  DataStore.swift
//  02
//
//  Created by 徐浩博 on 2020/4/8.
//  Copyright © 2020 徐浩博. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        Api().getPosts{ (posts) in
            self.posts = posts
        }
    }
}
