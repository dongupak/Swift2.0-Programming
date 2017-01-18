//: Playground - noun: a place where people can play

import Cocoa

// 원칙 : 스위프트의 일반자료형 변수는 nil이 될 수 없다
var movie = "깨어난 포스"
//movie = nil       // error
// 다음 경우도 오류
//var otherMovie : String = nil

// 정상적으로 값을 반환할 수 있는 경우
//var num = Int("100") 

// Int("...") 은 옵셔널 Int형을 반환한다.
var num : Int? = Int("100")
num

// Int("...") 은 옵셔널 Int형을 반환하므로 다음은 오류
//var num : Int = Int("100")
//num

// 다음과 같이하면 어떻게 될까?
// "Hello" 가 Int형으로 변할 수 있을까? 안되면 어떤 값을 반환할까?
var otherNum = Int("Hello")
otherNum

// 원칙 : Optional 변수는 nil이 될 수 있다
var optionalMovie1 : String? = "깨어난 포스"
optionalMovie1 = nil
var optionalMovie2 : String? = nil
optionalMovie2 = "깨어난 포스"

// 다음은 오류
//var n = Int("100") + Int("300")
//n

var n = Int("100")! + Int("300")!
n

// 옵셔널 바인딩
let str = "100"
// convertedNum은 Optional(Int) 형임
let convertedNum = Int(str)
convertedNum

if let actualNum = convertedNum {
    print("\(actualNum)")
    print("\(convertedNum) has an integer value of \(actualNum)")
}

// 옵셔널 String과 비옵셔널 String
var optionalString : String?
var nonOptionalString : String = "abc"
// optional 변수에 아무런 값을 할당하지 않으면 nil 값을 가진다
optionalString
// 아래와 같이 !로 강제 unwrapping하면 non Optional이 되어 오류발생
// 비옵셔널 변수는 nil을 가질 수 없다
//optionalString!         // error
// 옵셔널 변수에 새로운 값을 할당
optionalString = "abcd"

// optional 변수는 강제 unwrapping하여 새로운 값 할당
optionalString! = "abcd"
// unwrapping된 변수는 optional이 아니므로 nil을 가질 수 없다
//optionalString! = nil      // error

// optional 변수에 메시지를 주면 에러가 발생
//optionalString.uppercaseString   // error
// 강제 unwrapping하여 메시지를 준다
let str1 = optionalString!.uppercaseString
// OK - nil 검사 후 메시지 전달
let str2 = optionalString?.uppercaseString

//nonOptionalString.uppercaseString
//
//// 옵셔널 Int와 비옵셔널 Int
//var optionalNumber : Int? = 123
//var nonOptionalNumber : Int = 123
//
//print("\(optionalString)")
//print("\(nonOptionalString)")
//print("\(optionalNumber! + 1)")
//print("\(nonOptionalNumber + 1)")
//
//var possibleString:String? = "Hello"
//possibleString = nil

//if possibleString {
//    print("It's not nil")
//}

