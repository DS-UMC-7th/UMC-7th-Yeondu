//
//  CountUpDownModel.swift
//  kream
//
//  Created by 신연주 on 11/2/24.
//
import Foundation
struct CountUpDownModel {
    var count: Int = 0
    
    // count 변수를 1 증가
    mutating func increaseCount() {
        self.count += 1
    }
    // count 변수를 1 감소
    mutating func decreaseCount() {
        self.count -= 1
    }
}
