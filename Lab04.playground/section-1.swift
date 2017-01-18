// Playground - noun: a place where people can play

import Cocoa

// 흐름제어

var n = 10
var m = 20

if n == m {
    print("n and m is equal")
}
else if n < m {
    print("m is larger than n")
}
else {
    print("n is larger than m")
}

for index in 1...5 {
    "\(index) times 4 is \(index*4)"
}

for index in 1..<5 {
    "\(index) times 4 is \(index*4)"
}

var base = 2
var power = 5
var answer = 1

for _ in 1...power {
    answer *= base
}
// answer is base^power, 여기서는 2의 5제곱 = 32
answer

for var i = 0; i<10; i+=2 {
    i
}

// String형을 Character형으로 열거하는 for-in
for ch in "HELLO".characters {
    print(ch)
}

// String형을 Character형으로 열거하는 for-in
// enumerate()는 index와 문자값의 쌍으로 열거함
for (idx,ch) in "HELLO".characters.enumerate() {
    print("index : "+String(idx)+" "+String(ch))
}

n = 5
m = 10
//
// while 문은 조건을 검사하여 조건이 참이면 실행한다
while n < m {
    n++
}

// repeat-while문은 먼저 실행후 조건을 검사한다
n = 5
m = 10
repeat {
    n++
} while n < m


var ch = "a"
    
switch ch {
//case "A" :   // 아무문장도 없으면 error
case "a" :
    "match"
default :
    "unmatch"
}

var num = 3

switch num {
case 1...5:
    "small number"
case 6...10:
    "middle number"
default:
    "large number"
}

// Character "A"도 범위연산이 가능함
var letter = "A"

switch letter {
case "A"..."Z":
    "알파벳 대문자"
case "a"..."z":
    "알파벳 소문자"
default:
    "알파벳 아님"
}

let aChar : Character = "e"
switch aChar {
case "a", "e", "i", "o", "u":
    print("\(aChar)는 모음")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
"n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(aChar)는 자음")
default:
    print("\(aChar)는 자음도 모음도 아님")
}

// 다양한 형식의 switch-case 문
//var point = (0,3)
var point = (100,0)
switch (point) {
case (0,0):
    "point는 원점에 있습니다"
case (_,0):
    "point는 y축에 있습니다"
case (0,_):
    "point는 x축에 있습니다"
default:
    "point는 4분면 어딘가에 있습니다"
}

//
switch( point) {
case let (x,y):
    print("in point, x = \(x), y = \(y)")
}

//point = (10, 0)
point = (1, 10)
// 다양한 형식의 switch-case 문
// 값 바인딩까지 가능함
switch (point) {
case (0,0):
    "point는 원점에 있습니다"
case (let x, 0...2):  // x에 point.0값을 할당함
    "x변수는 \(x)(으)로 point.0 값이 할당됨"
case (0...2, let y):
    "y변수는 \(y)(으)로 point.1 값이 할당됨"
default:
    "x, y가 0에서 2사이에 해당하지 않음"
}

"point element x = \(point.0), y = \(point.1)"
switch(point) {
case let (x,y) where x == y :
    "element \(x) and \(y) is the same"
case let (x,y) where x > y :
    "1st element \(x) is larger than \(y)"
case let (x,y) where x < y :
    "2nd element \(y) is larger than \(x)"
default: break
}

var strInput = "Swift is very fast"
var strOutput = ""

// continue 문을 만나면 더이상의 조건 검사를 중지함
for ch in strInput.characters {
    switch ch {
    case " " :
        // continue가 없을 경우 오류
        // case는 반드시 수행가능한 문장을 포함하여야함
        continue
    default :
        strOutput.append(ch)
    }
}
strOutput

strInput = "Swift is very powerful"
strOutput = ""

for ch in strInput.characters {
    switch ch {
    case " " :
        fallthrough
    default :
        strOutput.append(ch)
    }
}
strOutput








    
