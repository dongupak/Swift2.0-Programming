// Swift 3 살펴보기 예제

import Cocoa

var x = 1
//x++
//++x

print(x)

// Swift 3.0에서는 다음과 같이 사용할 것
var y = 1
y += 1

print(y)

// Swift 2.x 이전 문법
//for var i = 0 ; i < 10 ; i++ {
//    print("i = \(i)")
//}

for i in 1...5 {
    print("i = \(i)")
}

// Swift 2.x 이전 문법
//var array = [10,20,30,40,50]
//for(var i=0 ; i < array.count ;i++){
//    print("array[i] \(array[i])")
//}

var array = [10,20,30,40,50]
for i in 0...array.count - 1  {
    print("array[i] \(array[i])")
}
