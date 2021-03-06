import UIKit

// Return the factorial of the provided integer.

// If the integer is represented with the letter n, a factorial is the product of all positive integers less than or equal to n.

// Factorials are often represented with the shorthand notation n!

// For example: 5! = 1 * 2 * 3 * 4 * 5 = 120

// Only integers greater than or equal to zero will be supplied to the function.


func factorialize(num: Int) -> Int {
    var numList = [Int]()
    
    if num > 0 {
        for i in 1...num {
            numList.append(i)
        }

        let factorializedSum = numList.reduce(1) { sum, num -> Int in
            sum * num
        }

        return factorializedSum
    } else {
        return 1
    }
}

factorialize(num: 5)


// Test Case 1 - Passed ✅
// factorialize(5) should return a number.

// Test Case 2 - Passed ✅
// factorialize(5) should return 120.

// Test Case 3 - Passed ✅
// factorialize(10) should return 3628800.

// Test Case 4 - Passed ✅
// factorialize(20) should return 2432902008176640000.

// Test Case 5 - Passed ✅
// factorialize(0) should return 1.
