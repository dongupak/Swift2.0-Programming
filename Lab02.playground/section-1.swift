// Playground - noun: a place where people can play

import Cocoa

//let constNum = 100
//var varNum = 200
//
//// 아래 문장은 오류를 일으킴
////constNum = 300
//print("constNum = \(constNum)")
//varNum = 300
//print("new VarNum = \(varNum)")
//
////
////
//
//let π = 3.14159
//let 한국어인사 = "헬로월드"
//한국어인사
//let 你好 = "你好世界"
//let 🐶🐮 = "dogcow"
//
//// 형 추정 - num을 Int형으로 추정함
//var num = 100
//// 명시적으로 otherNum을 Int형으로 함
//var otherNum : Int = 200;
//
//// Bool 형으로 추정함
//var isRun = false; var isBroken = true
//// 명시적으로 isSleep의 형을 Bool형으로 함
//var isSleep : Bool = true
//
//// String 형으로 추정함
//var stringA = "문자열 타입"
//// 명시적 String형
//var stringB : String = "명시적 문자열 타입"
//
//// Array 형으로 추정함
//let constantsNum = ["one", "two","three","four"]
//// Dictionay 형으로 추정함
//let variablesNum = ["one":1, "two":2]
//
//
//// 다음은 타입 명시(Type Annotation)을 이용한 변수 선언임
//// 변수의 형을 명시적으로 적어준다
let sayHello : String = "hello"
var someInt : Int = 3
var otherInt : Int = 2
var intX, intY : Int
intX = 400
intY = 500

//
// print를 이용하여 콘솔창에 출력할 수 있음
print("sayHello is \(sayHello)")
print("someInt is \(someInt)")
print("otherInt is \(otherInt)")

// playground에서는 다음과 같은 방법으로 값을 확인할 수 있다
sayHello
"\(sayHello)"
someInt
otherInt

// C언어와 같이 /* .. */ 주석문이 가능하다
/* sayHello
"\(sayHello)"
someInt
otherInt  */

1.2e2

// 문자형 표기 오류
//var ch0 : Character = 'a'
var ch1 : Character = "A"
// 문자형 표기 오류
//var ch2 : Character = "ABC"

// 튜플 상수
let errorCode = (230, "null point assingment")
errorCode.0
errorCode.1

// 튜플 변수
var httpError = (404, "Not Found")
httpError.0 = 405
httpError

var (code, message) = httpError
print("code = \(code)")
print("message = \(message)")















