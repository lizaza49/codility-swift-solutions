import Foundation

public func solution(_ N: Int) -> Int {
    let bin = String(N, radix: 2)
    var maxGap: Int = 0
    var gap: Int = 0
    for num in bin {
        if num == "1" {
            if gap > maxGap {
                maxGap = gap
            }
            gap = 0
        } else if num == "0" {
            gap += 1
        }
    }
    return maxGap
}
