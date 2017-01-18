//: Playground - noun: a place where people can play

import Foundation

//func canThrowErrors() throws -> String
//func cannotThrowErrors() -> String


enum CarEngineErrors : ErrorType {
    case NoFuel
    case OilLeak
    case LowBattery
}

func checkEngine() throws {
    let fuelReserve = 20.0
    let oilOK = true
    let batteryReserve = 0.0
    
    guard fuelReserve > 0.0 else {
        throw CarEngineErrors.NoFuel
    }
    guard oilOK else {
        throw CarEngineErrors.OilLeak
    }
    guard batteryReserve > 0.0 else {
        throw CarEngineErrors.LowBattery
    }
}

func startEngine() {
    do {
        try checkEngine()
    }
    catch CarEngineErrors.LowBattery {
        print("밧데리 충전이 필요합니다")
    }
    catch CarEngineErrors.NoFuel {
        print("기름이 부족합니다")
    }
    catch {  // 와일드 카드 catch 문
        print("차량 점검이 필요합니다")
    }
}

startEngine()


let file = "file.txt" //this is the file. we will write to and read from it

let text = "some text" //just a text

if let dir : NSString = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
    let path = dir.stringByAppendingPathComponent(file);
    
    //writing
    do {
        try text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding)
    }
    catch {/* error handling here */}
    
    //reading
    do {
        let text2 = try NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding)
    }
    catch {/* error handling here */}
}
