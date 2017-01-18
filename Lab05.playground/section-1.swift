// Playground - noun: a place where people can play

import Foundation

// 입력된 정수에 10을 더하여 반환하는 함수
func Add10(num: Int) -> (Int) {
    let result = num + 10
    return result
}

var n = 20
print("Before Add10(n), n = \(n)")
n = Add10(n)
print("After Add10(n), n = \(n)")


// 매개변수와 레이블
func greet(name:String, day:String) -> (String)
{
    return "Hello \(name), today is \(day)"
}
greet("Kathy", day: "Wednesday")
greet("홍길동", day: "비오는 봄날")

//
func getPersonInfo() -> (Int, String, Int)
{
    return (27, "홍길동", 182)
}

var person = getPersonInfo()

//
func swap(p1:Int, p2:Int) -> (Int,Int)
{
    return (p2, p1)
}

var n1 = 100, n2 = 200

print("before swap : n1 = \(n1), n2 = \(n2)")
(n1, n2) = swap(n1, p2: n2)
print("after swap : n1 = \(n1), n2 = \(n2)")

//
// 튜플 재조합
func refreshWebPage() -> (Int, String) {
    // some code ...
    return (200, "Success")
}

let (statusCode, message) = refreshWebPage()
print("Received \(statusCode): \(message)")

// swift는 함수 중복정의를 허용함
func greetings() {
    print("Hello, Guys!")
}

// 매개변수 name을 가진 greetings() 함수
func greetings(name: String) {
    print("Hello, \(name)!")
}

// name이라는 레이블을 사용한 greetings
func greetings(name name :String) {
    print("Hello, \(name)!")
}

func greetings(name :String, message :String) {
    print("Hello, \(name)! \(message)")
}

greetings()
greetings("홍길동")
greetings(name: "홍길동")
greetings("홍길동", message: "율도국의 왕")

//

func swap( inout a: Int,  inout b: Int)
{
    let temp = a
    a = b
    b = temp
}
//
n1 = 100
n2 = 200

print("test")

print("Before : n1 = \(n1)")
print("Before : n2 = \(n2)")

swap(&n1, &n2)

print("After : n1 = \(n1)")
print("After : n2 = \(n2)")
