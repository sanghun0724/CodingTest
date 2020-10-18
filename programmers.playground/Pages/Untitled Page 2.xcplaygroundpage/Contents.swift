
import Foundation


func solution(_ answers:[Int]) -> [Int] {
    let copy1:[Int] = [1,2,3,4,5]
    let copy2:[Int] = [2,1,2,3,2,4,2,5]
    let copy3:[Int] = [3,3,1,1,2,2,4,4,5,5]
    var score1 = 0,score2 = 0,score3 = 0
    
    answers.enumerated().forEach{(index,value) in
        if value == copy1[index % 5]{
            score1+=1
        }
        if value == copy2[index % 8]{
            score2+=1
        }
        if value == copy3[index % 10]{
            score3+=1
        }

    }
    let maxScore = max(max(score1, score2),score3)
    var result:[Int] = []
    if maxScore == score1 {
        result.append(1)
    }
    if maxScore == score2 {
        result.append(2)
    }
    if maxScore == score3 {
        result.append(3)
    }
    return result
    }

solution([1,3,2,4,2])
