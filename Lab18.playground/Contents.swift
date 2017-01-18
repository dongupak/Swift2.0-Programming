//: Playground - noun: a place where people can play

import Cocoa

// x가 옵셔널이므로 nil일 가능성이 있다
func fooManualCheck( x: Int? ) {
    if x == nil || x <= 0 {
        // x가 nil이거나 0 이하이면 일을 하도록 문장을 삽입
        return
    }
    
    // x를 강제 언래핑하여 일을 함, 이때 x는 확실하게 nil이 아님
    x!.description
}

fooManualCheck(200)

// if let 문을 사용함. 이때 x는 비강제 해제(implicitly unwrap)됨
func fooBinding( x: Int? ) {
    if let x = x where x > 0 {
        // Do stuff with x
        // x!를 사용할 필요가 없다
        x.description
    }
    
    // Value requirements not met, do something
}

fooBinding(100)

// guard else를 이용한 비강제 해제
func fooGuard(x: Int?) {
    guard let x = x where x > 0 else {
        // 위의 조건을 만족하지 않을경우 수행됨
        return
    }
    
    // x는 guard-else 문에 의해 비강제 해제되었음
    // 안심하고 x의 메소드를 호출할 수 있음
    x.description
}

// 비옵셔널 변수에 대한 guard문
func fooNonOptionalGood(x: Int) {
    guard x > 0 else {
        // x가 0보다 큰 양수라는 조건을 충족하지 않으면 수행되는 문장
        return
    }
    
    // x > 0 조건이 충족되면 수행되는 문장
}

// 비옵셔널 변수에 대한 if문의 예
func fooNonOptionalBad(x: Int) {
    if x <= 0 {
        // x가 0이거나 음수일 경우 수행되는 문장
        return
    }
    
    // x > 0 조건이 충족되면 수행되는 문장
}


