class Solution {
    func fib(_ N: Int) -> Int {
        
        switch N {
        case 0:
            return 0
        case 1:
            return 1
        case 2...30:
            return fib(N-1) + fib(N-2)
        default:
            print()
        }
        return 0
        
    }
}
