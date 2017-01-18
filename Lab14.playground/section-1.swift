// Playground - noun: a place where people can play

import Cocoa

struct Person {
    var name : String?
    var age : Int
}

var person : Person? = Person(name:"홍길동", age:27)

//person = nil
//print("이름은 \(person!.name!) 입니다")
person

if person != nil {
    if person!.name != nil {
        print("이름은 \(person!.name!) 입니다")
    }
}

// 이 person은 optional person이다, ! OK
person!
if let b = person {
// 이 블럭의 b는 확실히 nil이 아닐 것이다.(자동으로 unwrappping), 따라서 nonoptional
    b   // 에러
    if let name = b.name {
        name
        // name 은 확실히 nil이 아닐것이다
        // 강제 해제(forced unwraping '!')를 사용안해도 implicit unwrapping이 됨
        print("이름은 \(name) 입니다")
    }
}

if let name = person!.name
{
    print("이름은 \(name) 입니다")
}

if let name = person?.name {
    print("이름은 \(name) 입니다")
}
// 혹은

print(person?.name)

struct University {
    var president : Person?
    var universityName : String?
    var numOfStudents : Int
}

// 좀 더 복잡한 예
var cwnu : University? = University(president:person, universityName:"창원대학교", numOfStudents: 8400)

// if 구문이 3개나 쓰이는 불편한 구문
if let university = cwnu {
    if let president = university.president {
        if let name = president.name{
            print("총장의 이름은 \(name)입니다")
        }
    }
}

// 아래를 uncomment할 경우 crash
//cwnu = nil

// 강제 언래핑을 하는 방법
if let name = cwnu!.president!.name {
    print("총장의 이름은 \(name)입니다")
}

// 옵셔널 체인을 사용함
// 아래를 uncomment할 경우 crash가 발생하지 않음
cwnu = nil

if  let name = cwnu?.president?.name {
    print("총장의 이름은 \(name)입니다")
}

cwnu?.president?.name = "너총장"

