class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var flippedImageArray = [[Int]]()
        var tempArray = [Int]()
        
        for array in A {
            var internalArray = [Int]()
            tempArray = array
            tempArray.reverse()
            
            for element in tempArray{
                switch element {
                case 0:
                    internalArray.append(1)
                case 1:
                    internalArray.append(0)
                default:
                    print()
                }
            }
            
            flippedImageArray.append(internalArray)
        }
        return flippedImageArray
    }
}
