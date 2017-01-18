//: Playground - noun: a place where people can play

import Cocoa

enum Compass {
    case North
    case South
    case East
    case West
}

enum CompassPoint {
    case North, South, East, West
}

var directionToBusan  : Compass
directionToBusan = Compass.East
directionToBusan = .South

// 아래는 오류 - SouthEast는 enum에 정의되지 않았음
// directionToBusan = .SouthEast

enum Barcode {
    case UPCA(Int, Int, Int, Int), QRCodes(String)
}

var productBarcode = Barcode.UPCA(8, 77777, 11100, 3)
productBarcode = .QRCodes("ABCDEFGHIJK")

// productBarcode가 Barcode의 멤버중 일치되는 형이 있으면 진행
switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check) :
    print("UPC-A : \(numberSystem), \(manufacturer), \(product)")
case .QRCodes(let productCode) :
    print("QR : \(productCode)")
}

// Planet enumeration에 rawValue 할당이 가능
enum Planet : Int {
    case Mercury = 1, Venus, Earth, Mars, Jupitor, Saturn, Uranus, Neptune
}

enum Planets : Int {
    case Mercury, Venus, Earth, Mars, Jupitor, Saturn, Uranus, Neptune
}

Planet.Mercury
Planet.Mercury.rawValue

let positionToFind = 3
let somePlanet = Planet(rawValue: 3)
let otherPlanet = Planet(rawValue: 100)

struct Resolution {
    var width = 0
    var height = 0
    func descrition() -> Void {
        print("Resolution width = \(width), height = \(height)")
    }
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    func description() -> Void {
        print("Video interlacing = \(interlaced)")
    }
}

var res = Resolution()
res.descrition()
res.width = 1920
res.height = 1080
res

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
// 다음은 오류 
// hd.width = 2048

var video = VideoMode()
video.description()
video.interlaced = false
video.description()

// 간단한 프로퍼티와 메소드를 가지는 클래스의 예시
class Shape {
    var numOfSides = 0      // 프로퍼티(속성)
    func description() -> String {  // 메소드
        return "A shape with \(numOfSides) sides"
    }
}

var shape = Shape()  // Shape 인스턴스
shape.numOfSides = 7
var shapeDescription = shape.description()

var otherShape = Shape()  // 또다른 Shape 인스턴스
otherShape.numOfSides = 4
otherShape.description()

class Counter {
    var count = 0
    func increment() {
        count++
    }
    func incrementBy(amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

let aCounter = Counter()
//// 초기 counter값은 0입니다
//counter.increment()
//// counter값은 이제 1입니다
//counter.incrementBy(5)
//// counter값은 이제 6입니다
//counter.reset()
//// counter값은 이제 0입니다


// Hello 클래스의 메소드인 say는 레이블이 필요함
class Hello {
    var name: String = ""
    func say(name:String, andMessage msg:String){
        print("\(name) say \(msg)")
    }
}

var hello = Hello()
// 레이블을 삽입한 경우에는 성공적으로 수행됨
hello.say("Henry", andMessage:"Hi,Swift")
// 다음은 에러
// hello.say("Henry", msg:"Hi,Swift")

//class Counter {
//    var count: Int = 0
//    func incrementBy(amount: Int, numberOfTimes: Int) {
//        count += amount * numberOfTimes
//    }
//}
//
//let counter = Counter()
//counter.incrementBy(5, numberOfTimes: 3)
//// Counter value is now 15


//class Hello {
//    func say(name:String, msg:String, ofCount n:Int){
//        for index in 1...n {
//            print("\(name) say \(msg)")
//        }
//    }
//}
//
//let hello = Hello()
//hello.say("Henry", msg:"Hi,Swift", ofCount:3)

//class Hello {
//    func say(name:String, _ msg:String, _ n:Int){
//        for index in 1...n {
//            print("\(name) say \(msg)")
//        }
//    }
//}
//
//let hello = Hello()
//hello.say("Henry", "Hi,Swift", 3)


