import UIKit

// https://app.codility.com/demo/results/training2S3F9J-C5W/
public func solution(_ A : inout [Int]) -> Int {
    var cost = Array(repeating: 0, count: A.count)
    cost[0] = A[0]
    
    for i in 1..<A.count {
        var j = i - 1
        var k = 0
        var localMax = Int.min
        while j >= 0 && k < 6 {
            localMax = max(cost[j], localMax)
            k += 1
            j -= 1
        }
        cost[i] = max(cost[i - 1] + A[i], localMax + A[i])
    }
    
    return cost.last!
}
