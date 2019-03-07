class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var sortedArray = [Int]()
        
        for element in A{
            if element % 2 == 0 {
                sortedArray.append(element)
            }
        }
        
        for element in A{
            if element % 2 != 0 {
                sortedArray.append(element)
            }
        }
        
        return sortedArray
    }
}
