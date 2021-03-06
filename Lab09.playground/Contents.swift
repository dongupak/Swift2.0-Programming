//: Playground - noun: a place where people can play

import Cocoa

// 함수 생성
func printNum(num : Int) {
    print("Number is : \(num)")
}

func multBy20(num : Int) {
    print("\(num) x 20 = \(num*20)")
}

// 단순한 함수 호출문
printNum(100)
multBy20(10)

// 함수를 매개변수로 넣어서 이 함수를 함수내부에서 호출
func useFunc(funcParam: (Int) -> () ) {
    funcParam(3)
}
useFunc(printNum)
useFunc(multBy20)

// 정수를 입력받아 두배 크기로 확장하는 함수
func doubler(i : Int) -> Int {
    return i * 2
}

func square(i : Int) -> Int {
    return i * i
}

// 배열의 map 함수는 함수를 매개변수로 입력받아 각 멤버에 적용함
let array = [1,2,3,4]
let arrayA = array.map(doubler)
let arrayB = array.map(square)

// 익명함수를 map의 매개변수로 넣어 새 멤버값을 만든다-클로저
let arrayC = array.map({(i:Int) -> Int in return i * 2})
arrayC
let arrayD = array.map({(i:Int) -> Int in return i * i})
arrayD

// Swift의 newDoubler라는 함수선언 방식 - 클로저를 표현식
let newDoubler = {(i:Int) -> Int in return i * 2}
newDoubler(3)

let arrayE = array.map(newDoubler)
arrayE
// 아래와 비교하면 arrayE, arrayF의 결과는 동일하다
let arrayF = array.map(doubler)
arrayF

// 클로저를 이용한 배열 뒤집기(reverse) 샘플
let names = ["희진", "철수","영희","동윤","동민"]

// 두 String형 변수를 입력받아서 Bool형 값을 반환하는 함수
func backwards(s1:String, s2:String) -> Bool {
    return s1 < s2
}

// backwards 함수를 사용한 정렬
var reversed1 = names.sort(backwards)
reversed1

// 클로저를 이용한 정렬
var reversed2 = names.sort({(s1:String, s2:String) -> Bool in
    return s1 < s2})

// 클로저를 간단하게 만든 버전 1
var reversed3 = names.sort({s1, s2 in return s1 < s2})
reversed3

// 클로저를 간단하게 만든 버전 2
var reversed4 = names.sort({s1, s2 in s1 < s2})
reversed4

// 클로저를 간단하게 만든 버전 3
var reversed5 = names.sort({$0 < $1})
reversed5

// 클로저를 간단하게 만든 버전 4
var reversed6 = names.sort(<)
reversed6










