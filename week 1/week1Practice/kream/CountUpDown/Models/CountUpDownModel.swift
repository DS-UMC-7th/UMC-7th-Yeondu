//
//  CountUpDownModel.swift
//  kream
//
//  Created by 신연주 on 11/2/24.
import Foundation

struct CountUpDownModel {
    var count: Int = 0
    
    mutating func increaseCount() {
        self.count += 1
    }
    
    mutating func decreaseCount() {
        self.count -= 1
    }
}
