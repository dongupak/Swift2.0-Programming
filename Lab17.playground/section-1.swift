// Swift 튜토리얼 17

import Cocoa

// SampleProtocol 프로토콜 선언
protocol SampleProtocol {
    func desc(name: String)
}

//var sample : SampleProtocol = SampleProtocol()

// 구조체 Man, Woman, 클래스 Person 모두 desc()를 구현해야 함
struct Man : SampleProtocol {
    func desc(name: String) {
        print("남자의 이름은 \(name)입니다 ")
    }
}

struct Woman : SampleProtocol {
    func desc(name: String) {
        print("여자의 이름은 \(name)입니다 ")
    }
}

class Person: SampleProtocol {
    func desc(name: String) {
        print("사람의 이름은 \(name)입니다")
    }
}

// 프로토콜을 구현하지 않을 경우 컴파일 오류가 발생함
//class Animal : SampleProtocol {
//    var name : String?
//}

protocol InitProtocol {
    init()
    init(name: String)
}

struct StrucInit : InitProtocol {
    var name : String
    init() {
        self.name = "홍길동"
    }
    init(name: String) {
        self.name = name
    }
}

class ClassInit : InitProtocol {
    var name : String
    required init() {
        self.name = "홍길동"
    }
    required init(name: String) {
        self.name = name
    }
}

protocol TestProtocol {
    init()
}

class ParentClass {
    init() {
    }
}

class ChildClass : ParentClass, TestProtocol {
    override required init()
    {
        
    }
}

// Guest 클래스를 정의하였다
class Guest {
    var name : String?
    init(name: String = "홍길동") {
        self.name = name
    }
}

protocol Reservation {
    func printReservation()
}

// Guest 클래스의 기능을 extension을 통해서 확장시킴
extension Guest : Reservation {
    func printReservation() {
        print("\(self.name) 님이 9:00에 예약하셨네요")
    }
}

var guest = Guest(name: "홍길순")
guest.printReservation()

