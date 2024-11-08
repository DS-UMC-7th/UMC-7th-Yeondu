//
//  HomeMenuModel.swift
//  kream_r
//
//  Created by 신연주 on 11/8/24.
//

import UIKit

struct HomeMenuModel{
    let image: UIImage
    let title: String
}

extension HomeMenuModel{
    static func dummy() -> [HomeMenuModel] {
        return[
            HomeMenuModel(image: .homeImage1, title: "크림 드로우"),
            HomeMenuModel(image: .homeImage2, title: "실시간 차트"),
            HomeMenuModel(image: .homeImage3, title: "남성 추천"),
            HomeMenuModel(image: .homeImage4, title: "여성 추천"),
            HomeMenuModel(image: .homeImage5, title: "색다른 추천"),
            HomeMenuModel(image: .homeImage6, title: "정가 아래"),
            HomeMenuModel(image: .homeImage7, title: "윤세 24AW"),
            HomeMenuModel(image: .homeImage8, title: "올해의 베스트"),
            HomeMenuModel(image: .homeImage9, title: "10월 베네핏"),
            HomeMenuModel(image: .homeImage10, title: "아크네 선물"),
        ]
}

