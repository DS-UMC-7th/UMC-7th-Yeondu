//
//  CountUpDownModel.swift
//  week1
//
//  Created by 김건 on 1/9/25.
//

import Foundation

struct CountUpDownModel{
    var count: Int = 0
    
    //변수 증가 함수
    mutating func increaseCount(){
        self.count += 1
    }
    
    //변수 감소 함수
    mutating func decreaseCount(){
        self.count -= 1
    }
}
