//: Playground - noun: a place where people can play

import Cocoa

// 배열의 생성과 초기화
// 배열형을 [Int]로 추정함
var intArray1 = [100,200,300,400]
// 배열형 [Int]로 명시함
var intArray2 : [Int] = [10,20,30,40,50,60]
intArray2 = intArray1

// 배열형임을 Array<>로 선언함
var intArray3 : Array<Int> = [10,20,30]

// 비어있는 Int형 배열 선언1 - 0 element
var intArray4 : [Int] = []
intArray4
intArray4 = [1,2,3,4,5]
// 비어있는 Int형 배열 선언2
var intArray5 = [Int]()

var anyArray1 : Array<Any> = [1,2,"AB","ABCD"]
// 다음은 오류 - Any형 배열은 Any형 배열에 값을 할당할 수 있다
// intArray1 = anyArray1

var threeDoubles = [Double](count: 30, repeatedValue: 4.0)
var fourInts = [Int](count: 4, repeatedValue: 90)
var eightInts = fourInts + fourInts


var stringArray0 : [String] = ["hello", "world"]

// 문자열 배열 - 비어있는 배열
var stringArray1 = [String]()
var stringArray2 = [String]()

stringArray0.count
stringArray1.count

// 문자열의 배열 stringArray0에 원소를 추가함
stringArray0.append("hello")
stringArray0.append("Swift")

// 정수 배열에 새로운 정수 원소 추가
intArray1
intArray1 += [50]

// 원소를 추가하는 다른 방법
stringArray1
stringArray1 += ["hello", "Swift"]

if stringArray1.isEmpty {
    "string array is empty"
}
else {
    "string array is not empty"
}

// 배열원소의 접근과 수정
intArray1[0]
intArray1[0...2]
// 첫번째 원소값을 11로 수정
intArray1[0] = 11
intArray1[0...2] = [100, 200, 300]
intArray1
intArray1.insert(99, atIndex: 0)
//intArray2 = intArray1.reverse()
intArray1.removeFirst()
intArray1.removeLast()
intArray1.removeAtIndex(0)

for item in intArray1 {
    item
}

for str in stringArray0 {
    "\(str)"
}

for (index, value) in stringArray0.enumerate() {
    "item \(index + 1) : value \(value) "
}

var keyValue : [String:String] = ["Playground" : "a place where people can play",
                                "glossary" : "a vocabulary"]

var dicA : [String:String] = ["광해": "사극영화", "살인의 추억":"미스테리영화"]

var dicB = ["초등": [1,2,3,4,5,6], "중등":[1,2,3], "고등" :[1,2,3], "대학":[1,2,3,4]]

var dicC = Dictionary<Int, String>()

//
dicA.count
dicB.count
dicC.count
// 딕셔너리에 값을 추가함
dicA["마션"] = "과학영화"
dicA.count

// 딕셔너리의 key에 해당하는 value 값을 갱신함
dicA.updateValue("스릴러영화", forKey: "살인의 추억")
dicA["살인의 추억"]
dicA

//
dicA["인터스텔라"] = nil
dicA.count

dicA.removeValueForKey("광해")
dicA
//
dicA["광해"] = "사극영화"
dicA["이미테이션게임"] = "전기영화"
//
for ( key, val ) in dicA {
    "\(key): \(val)"
}
//
for code in dicA.keys {
    "\(code)"
}
//
for genre in dicA.values {
    "\(genre)"
}
// 딕셔너리의 key를 배열로 캐스팅
var strArrayX = Array(dicA.keys)
//
var strArrayY = Array(dicA.values)
//

