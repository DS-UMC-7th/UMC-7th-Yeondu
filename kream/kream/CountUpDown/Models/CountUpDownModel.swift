struct CountUpDownModel {
    var count: Int = 0
    
    // count 변수를 1 증가시킵니다.
    mutating func increaseCount() {
        self.count += 1
    }
    
    mutating func decreaseCount() {
        self.count -= 1
    }
}


