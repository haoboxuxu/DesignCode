//
//  CourseStore.swift
//  02
//
//  Created by 徐浩博 on 2020/4/8.
//  Copyright © 2020 徐浩博. All rights reserved.
//

import SwiftUI
import Contentful
import Combine

let client = Client(spaceId: "40b7wpl6ste3", accessToken: "dc9KoH_m7yplX5M5wyOVPX-DMgj6ICnY48625mIL-XU")

func getArray(id : String, complition: @escaping([Entry]) -> ()) {
    //courses 记得要小写
    let query = Query.where(contentTypeId: id)
    
    client.fetchArray(of: Entry.self, matching: query) { result in
        switch result {
        case .success(let array):
            DispatchQueue.main.async {
                complition(array.items)
            }
            complition(array.items)
        case .error(let error):
            print(error)
        }
    }
}

class CourseStore: ObservableObject {
    @Published var courses: [Cource] = courseData
    
    init() {
        print("hello???")
        getArray(id: "courses") { (items) in
            items.forEach{ (item) in
                self.courses.append(Cource(
                    title: item.fields["title"] as! String,
                    subtitle: item.fields["subtitle"] as! String,
                    image: #imageLiteral(resourceName: "Card4"),
                    logo: #imageLiteral(resourceName: "Logo1"),
                    color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),
                    show: false))
            }
        }
    }
}
