// Playground - noun: a place where people can play

import Cocoa

struct PersonInfo {
    // struct의 속성(property)이라고 함
    var SSN : Int    // 변수 속성
    let age : Int    // 상수 속성
}

var person1 = PersonInfo(SSN: 111222, age: 23)
person1.SSN = 112233
person1

// 구조체 내부의 상수 속성(let)은 변경이 불가능
//person1.age = 9

// 상수 구조체의 저장속성은 변경이 불가능 - 아래 주석문은 error
let person2 = PersonInfo(SSN: 4, age: 29)
//person2.SSN = 888888

struct Round {
    var radius : Double = 0.0
    var area : Double = 0.0
}

var r = Round()
var copy_r = r

copy_r.radius = 10
r

class Circle {
    var radius : Double = 0.0
    var area : Double = 0.0
}

// c는 Circle 인스턴스를 참조함
var c = Circle()
// copy_c는 Circle 인스턴스 참조 변수임
var copy_c : Circle
// copy_c가 c가 참조하는 Circle 인스턴스를 참조함
copy_c = c

c.radius = 10
copy_c


struct otherValue {
    var a = 10
}

var val3 = otherValue()
val3.a = 100;

let val4 = otherValue()
// 다음은 에러발생
//val4.a = 100

class OtherReference {
    var a = 10
}

// 변수형 클래스의 속성은 당연히 변경 변경가능함
var ref3 = OtherReference()
ref3.a = 100
// 상수형 클래스의 속성 역시 변경가능함
let ref4 = OtherReference()
ref4.a = 100
// 상수형 ref4는 새 인스턴스를 참조하도록 할 수 없음
//ref4 = ref3
// 하지만 다음은 가능함
ref3 = ref4
