import UIKit

struct Lecture {
    var title: String
    var maxStudents: Int = 10
    var numOfRegistered: Int = 0
    
    // 관련된 기능을 안에 메소드로 선언한다.
    func remainSeats() -> Int {
        // 남은 좌석 수 반환
        let remainSeats = lec.maxStudents - lec.numOfRegistered
        return remainSeats
    }
    
    mutating func register() {
        // 등록된 학생수 증가 시키기
        numOfRegistered += 1
    }
    
    static let target: String = "Anybody who want to learn Swift"
    
    static func academy() -> String {
        return "Dee Academy"
    }
    
}

Lecture.target
Lecture.academy()

var lec = Lecture(title: "Swift")

lec.remainSeats()

lec.register()
lec.remainSeats()



struct Math {
    static func abs(value: Int) -> Int {
        if value >= 0 {
            return value
        } else {
            return -value
        }
    }
}

Math.abs(value: -20)

// 이 상황에서 제곱이나 절반을 구하는 등 메소드를 추가하고 싶다면
extension Math {
    static func square(value: Int) -> Int {
        return value * value
    }
    
    static func half(value: Int) -> Int {
        return value / 2
    }
}

Math.half(value: 7)

// Int, Apple에서 제공하는 struct에서도 메소드를 확장할 수 있다.
extension Int {
    func square() -> Int {
        return self * self
    }
    func half() -> Int {
        return self / 2
    }
}


var value: Int = 3
value.square()


