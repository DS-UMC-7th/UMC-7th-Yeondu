//
//  TeenipingModel.swift
//  week4
//
//  Created by 신연주 on 1/15/25.
//

import Foundation
import UIKit

struct TeenipingModel {
    let image: UIImage
    let name: String
}

extension TeenipingModel {
    static func dummy() -> [TeenipingModel] {
        return [
            TeenipingModel(image: .image1, name: "하츄핑"),
            TeenipingModel(image: .image2, name: "라라핑"),
            TeenipingModel(image: .image3, name: "바로핑"),
            TeenipingModel(image: .image4, name: "아자핑"),
            TeenipingModel(image: .image5, name: "차차핑"),
            TeenipingModel(image: .image6, name: "해핑"),
            TeenipingModel(image: .image7, name: "무거핑"),
            TeenipingModel(image: .image8, name: "시러핑")

        ]
    }
}
