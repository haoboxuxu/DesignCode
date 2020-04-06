//
//  UpdateStore.swift
//  01
//
//  Created by 徐浩博 on 2020/4/6.
//  Copyright © 2020 徐浩博. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
