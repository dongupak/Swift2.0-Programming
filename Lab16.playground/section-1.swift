// Swift 튜토리얼 16

import Cocoa

class Person {
    let name: String
    var apartment: Apartment?
    init(name: String) { self.name = name }
    deinit { print("\(name) is being deinitialized")
    }
}

class Apartment {
    let number: Int
    weak var tenant: Person?
    init(number: Int) { self.number = number }
    deinit { print("Apartment #\(number) is being deinitialized") }
}

var john: Person?
var number73: Apartment?

john = Person(name: "John Appleed")
number73 = Apartment(number: 77)

john!.apartment = number73
number73!.tenant = john

//john!.apartment = nil
//number73!.tenant = nil

john = nil
number73 = nil

class Employee {
    var name : String
    var team : Team?
    
    init(name: String) {
        print("Employee init")
        self.name = name
        self.team = nil
    }
    deinit {
        print("Employee deinit")
    }
}

class Team {
    var name : String
    unowned var leader : Employee
    
    init(name: String, leader : Employee) {
        print("Team init")
        self.name = name
        self.leader = leader
    }
    deinit {
        print("Team deinit")
    }
}

var emp1: Employee? = Employee(name: "홍길동")
var team1: Team? = Team(name: "개발팀", leader: emp1!)

emp1!.team = team1
team1 = nil
emp1 = nil


