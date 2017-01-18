// Swift의 중첩함수에 대해 알아봅시다

import Cocoa

// Swift의 함수 - 중첩함수 샘플 코드
func funcA() -> Int {
    var a = 10
    // 내부함수 funcB는 변수 a에 접근가능
    func funcB() {
        a = a + 10
    }
    funcB()
    
    return a
}

funcA()

// swift 함수 중첩
func makeInc1() -> (Int -> Int)
{
    func addOne(number : Int) -> Int {
        return number+1
    }
    
    return addOne
}

var increment = makeInc1()
increment(7)

// swift 함수 중첩
func makeInc2(amount: Int) -> () -> Int
{
    var runningTotal = 10
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementor
}

var incFive = makeInc2(5)
incFive()
incFive()
incFive()
var incTen = makeInc2(10)
incTen()
incTen()

func hasAnyMatches(list : [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}
func lessThanZero(number: Int) -> Bool {
    return number < 0
}

var numbers = [20, 19, 7, 12, 22]
hasAnyMatches(numbers, condition: lessThanTen)
hasAnyMatches(numbers, condition: lessThanZero)


