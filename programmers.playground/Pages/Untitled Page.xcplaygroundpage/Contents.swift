//: [Previous](@previous)

import Foundation

func solution(_ s:String) -> String {
    var middleIndex:[Int] {
        get {
            if s.count % 2 == 0 {
                return [s.count / 2 - 1,s.count / 2 ]
            }
            return [Int(Double(s.count/2)+0.5)]
        }
        
    }
    if middleIndex.count == 1 {
    return "\(s[s.index(s.startIndex, offsetBy: middleIndex[0])])"
    }
    return "\(s[s.index(s.startIndex, offsetBy: middleIndex[0])])" + "\(s[s.index(s.startIndex, offsetBy: middleIndex[1])])"
}
solution("123456789")

