//: Playground - noun: a place where people can play

import Cocoa

// 매개변수에 var 키워드 삽입 - Swift 2.x 방식
//func doSomethingWithVar(var i:Int) {
//    i = 2;
//}

// 매개변수에 var 키워드 삽입하지 않음 - Swift 3 방식
func doSomethingWithVar(i:Int) {
//    i
    // 다음은 허용되지 않은
//    i = 2
    var i = 2;
//    i
}

func doSomethingWithInout(i: inout Int) {
    i = 2;
}

var x = 1;
print(x)    // 1

// 값에 의한 호출(Call by value)
doSomethingWithVar(i:x)
print(x)    // 1

// 참조에 의한 호출(Call by reference)
doSomethingWithInout(i:&x)
print(x)    // 2
