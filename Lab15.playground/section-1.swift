// Playground - noun: a place where people can play

import Cocoa

class VideoMode {
    // 값을 저장하는 프로퍼티(속성)
    var interlaced = false
    var frameRate = 0.0
    var name : String?
    
    // 인스턴스의 행위를 정의하는 메소드
    func description() -> Void {
        if let className = name {
            print("VideoMode 클래스의 설명 : \(className)")
        }
    }
}

// VideoMode()를 통해 인스턴스를 생성
//var aVideo = VideoMode()
//// 인스턴스의 프로퍼티에 값을 준다
//aVideo.interlaced = true
//aVideo.name = "1080i"
//// 인스턴스의 메소드 호출을 통해 일을 시킨다
//aVideo.description()
//

// 초기화 1
//class Car {
//    var speed : Int = 0
//    var color : String = "Red"
//}

// 초기화 2
class Car {
    var speed : Int
    var color : String
    init(){
        speed = 0
        color = "Red"
        print("Car 인스턴스가 생성되어 프로퍼티가 초기화됨")
    }
    init(color:String){
        speed = 0
        self.color = color
//        print("Car 인스턴스가 생성되어 프로퍼티가 초기화됨")
    }
    deinit {
        print("Car 인스턴스가 해제되어 메모리에서 소거됨")
        print("")
    }

    func desc() {
        print("Car.speed = \(self.speed)")
        print("Car.color = \(self.color)")
    }
}

var car : Car? = Car()
car = nil

class RaceCar : Car {
    var hasTurbo: Bool
    override init() {
        hasTurbo = true
        super.init()
        print("RaceCar instance가 생성되어 초기화됨")
    }
    override func desc() {
        print("hasTurbo = \(hasTurbo)")
        super.desc()
    }
}

var myCar = RaceCar()
myCar.desc()

class user {
    var name:String
    var address:String
    
    init(nm: String, ad: String) {
        name = nm
        address = ad
    }
}


class registeredUser : user {
    var numberPriorVisits: Int;
    
    override init(nm: String, ad: String) {
        self.numberPriorVisits = 0;
        super.init(nm: nm, ad: ad)
    }
}

//struct Job {
//    var income: Int = 0 {
//        willSet(newIncome) {
//            print("이번달 월급은 \(newIncome) 입니다")
//        }
//        didSet {
//            if income > oldValue {
//                print("월급이 \(income-oldValue)원 증가하셨네요")
//            }
//            else {
//                print("힘내세요. 월급이 삭감되었군요")
//            }
//        }
//    }
//}
//
//var job = Job(income: 1000000)
//job.income = 2000000
