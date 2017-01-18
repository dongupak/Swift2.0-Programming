// 6 Swift 기초 - 고급함수

import UIKit

func join(s1: String, s2: String, joiner: String)
    -> String {
    return s1 + joiner + s2
}

join("hello", s2: "world", joiner: ", ")


// 함수 레이블을 통해서 매개변수의 의미를 명확하게 함
func join(string s1: String, toString s2: String, withJoiner joiner: String)
    -> String {
        return s1 + joiner + s2
}

join(string: "춘향", toString: "이몽룡", withJoiner: " 그리고 ")
join(string: "로미오", toString: "줄리엣", withJoiner: " , ")

func printName(aName name : String) {
    print("안녕하세요 \(name)씨")
}
printName(aName : "홍길동")

func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1,2,3,4,5)
// 다섯 정수의 산술평균 3.0을 반환함
arithmeticMean(3, 8, 19)
// 3,8,19의 산술평균 10.0을 반환함

// 함수 타입에 대해 알아봅시다 -1
func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}

func multTwoInts(a: Int, b: Int) -> Int {
    return a * b
}

addTwoInts(1, b: 3)
multTwoInts(1, b: 3)

// mathFunction은 함수타입 변수임
var mathFunction: (Int, Int) -> Int

mathFunction = addTwoInts
mathFunction(2, 3)

// 함수타입(형) 변수에 레이블을 사용할 경우 error
//mathFunction(2, b: 3)

mathFunction = multTwoInts
mathFunction(2, 3)

// 함수 타입에 대해 알아봅시다 -2
func addTwoInts2(a: Int, b: Int) -> Int {
    return a + b
}

var mathFunction2: (Int, Int) -> Int = addTwoInts2
var newMathFunction: (Int, Int) -> Int

newMathFunction = mathFunction2
print("Result: \(mathFunction2(2, 3))")
print("Result: \(newMathFunction(3, 3))")

func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, a: 3, b: 5)
// prints "Result: 8"

// 스텝 함수 - 두 개의 함수를 정의하고 이 함수를 반환하는 함수를 정읜 
func stepForward(input: Int) -> Int {
    return input + 1
}
func stepBackward(input: Int) -> Int {
    return input - 1
}

func chooseStepFunction1(backwards: Bool) -> (Int) -> Int {
    return backwards ? stepBackward : stepForward
}

chooseStepFunction1(true)(10)
chooseStepFunction1(false)(10)

// 스텝 함수 - 함수내부에 다른 함수를 포함하고 있음
func chooseStepFunction2(backwards: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int {
        return input + 1 }
    func stepBackward(input: Int) -> Int {
        return input - 1 }
    return backwards ? stepBackward : stepForward
}

chooseStepFunction2(true)(10)
chooseStepFunction2(false)(10)

