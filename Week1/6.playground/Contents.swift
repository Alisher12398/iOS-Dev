class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var currentIndex = 0
        var currentEndIndex = nums.count-1
        while currentIndex<currentEndIndex {
            if nums[currentIndex] == 0 {
                nums.append(0)
                nums.remove(at: currentIndex)
                currentIndex -= 1
                currentEndIndex -= 1
            }
            currentIndex += 1
        }
    }
}
