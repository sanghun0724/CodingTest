//: [Previous](@previous)

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
   var student = [Int](repeating: 1, count: n)
    for i in lost {
        var index = i - 1
        student[index] = student[index] - 1
    }
    for i in reserve {
        var index = i - 1
        student[index] = student[index] + 1
    }
    
    for (index,value) in student.enumerated() {
        if value == 0 {
            if  index > 0 && student[index - 1] == 2 {
                student[index-1]-=1
                student[index]+=1
            }
            else if index < student.count - 1 && student[index + 1] == 2 {
                student[index+1]-=1
                student[index]+=1
            }
        }
    }
   return student.filter{$0 >= 1}.count
    
    
}
solution(8, [2,4,5], [3])
//for i in 0...studentDic.count-1 {
//     print(studentDic)
//}
