//: Playground - noun: a place where people can play

import Cocoa

//struct Celsius {
//    var temperatureInCelsius: Double
//}
//let boilingPointOfWater = Celsius(temperatureInCelsius:212.0)
//boilingPointOfWater

struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
// boilingPointOfWater.temperatureInCelsius is 100.0
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
// freezingPointOfWater.temperatureInCelsius is 0.0

struct Point {
    var x = 0.0, y = 0.0
    
    func isToTheRightOfX( x : Double ) -> Bool {
        return self.x > x
    }
}

var somePoint = Point(x: 4.0, y : 5.0)
somePoint.x += 10
somePoint.x


if somePoint.isToTheRightOfX(1.0) {
    print("This point is the right of the line where x = 1.0")
}

//struct Point0 {
//    var x = 0.0, y = 0.0
//    
//    func moveByX(deltaX : Double, deltaY : Double) {
//        x += deltaX
//        y += deltaY
//    }
//}
//// 다음은 에러
//var somePoint0 = Point0()
//somePoint0.moveByX(200.0, deltaY: 300.0)

struct Point1 {
    var x = 0.0, y = 0.0
    
    mutating func moveByX(deltaX : Double, deltaY : Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint1 = Point1()
somePoint1.moveByX(2.0, deltaY: 3.0)
somePoint1.x

let somePoint2 = Point1(x:100.0, y:100.0)
// 다음은 오류 - 상수 변수에는 mutating 함수를 사용못함
//somePoint2.moveByX(10, deltaY: 20)

class Point2 {
    var x = 0.0, y = 0.0
    
    func moveByX(deltaX : Double, deltaY : Double) {
        x += deltaX
        y += deltaY
    }
}
// 클래스의 메소드는 mutable이므로 다음은 OK
var somePoint3 = Point2()
somePoint3.moveByX(2.0, deltaY: 3.0)
somePoint3.x

