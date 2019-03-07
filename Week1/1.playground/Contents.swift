class Solution{
    func sortedSquares(_ inputArray : [Int]) -> [Int]{
        var sortedArray = [Int]()
        for number in inputArray{
            sortedArray.append(number*number)
        }
        sortedArray.sort()
        return sortedArray
    }
}
