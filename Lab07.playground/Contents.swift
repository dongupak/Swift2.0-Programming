//: Playground - noun: a place where people can play

import Cocoa

// 제너릭스 설명을 위한 3개의 swap 함수 - 자료형이 다름
func swapTwoInts(inout a: Int, inout b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoDoubles(inout a: Double, inout b: Double) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoStrings(inout a: String, inout b: String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var n1 = 100
var n2 = 200

swapTwoInts(&n1, b: &n2)
n1
n2

var s1 = "Hello"
var s2 = "World"

swapTwoStrings(&s1, b: &s2)
s1
s2

// 제너릭스를 이용한 swap 함수 - 다양한 자료형에 대한 swap이 가능
func swapTwoValues<T>(inout a: T, inout b: T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

// 하나의 함수로 여러 타입의 데이터 처리가 가능하다
n1 = 100; n2 = 200
swapTwoValues(&n1, b: &n2)
n1
n2

s1 = "Hello"; s2 = "World"
swapTwoValues(&s1, b: &s2)
s1
s2

func repeatInt(item: Int, times: Int) -> [Int]
{
    var result = [Int]()
    for _ in 1...times {
        result.append(item)
    }
    
    return result
}

repeatInt(3, times: 5)
repeatInt(4, times: 5)

func repeatString(item: String, times: Int) -> [String]
{
    var result = [String]()
    for _ in 1...times {
        result.append(item)
    }
    
    return result
}

repeatString("Hi", times: 5)
repeatString("Hello", times: 3)

func repeatItem<T>(item: T, times: Int) -> [T]  {
    var result = [T]()
    for _ in 1...times {
        result.append(item)
    }
    return result
}

repeatItem("knock", times: 4)
repeatItem(10, times: 4)
repeatItem(1.1, times: 3)

