// Playground - Swift 튜토리얼 20 Set

import Cocoa

// 배열형 자료
// Set형 선언을 하지않고 집단데이터를 생성하면 디폴트로 Array 자료형으로 선언됨
var arrayGenre = ["Action", "Documentary", "Romance", "Horror"]
var arrayString : Array = ["Action", "Documentary", "Romance", "Horror"]

// 집합형 자료
var movieGenre : Set = ["Action", "Documentary", "Romance", "Horror"]
var genre : Set<String> = ["Action", "Documentary", "Romance", "Horror"]

var myGenre : Set<String> = [ ]
myGenre.insert("Action")
myGenre.insert("Romance")

myGenre.count

if myGenre.contains("Action") {
    print("Action Genre is an element of myGenre")
}
else {
    print("Action Genre is not included in myGenre")
}

myGenre.insert("Action")
myGenre.count

print("")
for gen in myGenre {
    print("\(gen)")
}
print("")

for gen in myGenre.sort() {
    print("\(gen)")
}

print("")

var yourGenre : Array<String> = [ ]
yourGenre.insert("Action", atIndex:0)
yourGenre.insert("Romance", atIndex:1)

yourGenre.count

if yourGenre.contains("Action") {
    print("Action Genre is an element of yourGenre")
}
else {
    print("Action Genre is not included in yourGenre")
}

yourGenre.insert("Action", atIndex:2)
yourGenre.count

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sort()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersect(evenDigits).sort()
// []
oddDigits.subtract(singleDigitPrimeNumbers).sort()
// [1, 9]
oddDigits.exclusiveOr(singleDigitPrimeNumbers).sort()
// [1, 2, 9]

// 집합의 포함관계와 서로소
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubsetOf(farmAnimals)
// true
farmAnimals.isSupersetOf(houseAnimals)
// true

// farmAnimals와 cityAnimals는 서로소인가?
farmAnimals.isDisjointWith(cityAnimals)
// true



