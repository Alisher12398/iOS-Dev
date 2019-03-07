class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        //var stringWithoutSpaces = s.split(separator: " ")
        var charString = [Character](s.lowercased())
        var currentIndex = 0
        while (currentIndex < (charString.count-1) ){
            if charString[currentIndex]==" " || charString[currentIndex]=="," || charString[currentIndex]=="!" || charString[currentIndex]==":" || charString[currentIndex]=="." || charString[currentIndex]=="?" || charString[currentIndex]=="-"  {
                charString.remove(at: currentIndex)
                currentIndex -= 1
            }
            currentIndex += 1
        }
        
        
        var startIndex = 0
        var endIndex = charString.count - 1
        print (String(charString))
        while (startIndex < endIndex) {
            if charString[startIndex] != charString[endIndex]{
                return false
            }
            startIndex += 1
            endIndex -= 1
        }
        
        return false
    }
}

