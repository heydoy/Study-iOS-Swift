import UIKit

// Struct
struct PersonStruct {
    // Stored Property
    var firstName: String
    var lastName: String
    
    // Computed Property
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    // Initialiser
    init (firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    // 자기자신의 stored property를 변경할 때
    // mutable 하다는 의미로 mutating 키워드를 넣어 선언
    mutating func uppercaseName() {
        // 대문자로 변환
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

// Struct와 매우 유사하게 Class로 만들 수 있다.

class PersonClass {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    // Initialiser
    init (firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
     func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = PersonStruct(firstName: "Dee", lastName: "Kim")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Dee", lastName: "Kim")
var personClass2 = personClass1

//Struct는 Value 타입이라서 값이 다르다. 서로 다른 값을 가지고 있음.
personStruct2.firstName = "Janine"
personStruct1.firstName
personStruct2.firstName

// Class는 Reference 타입이라서 값이 같아진다.
personClass2.firstName = "Janine"
personClass1.firstName
personClass2.firstName

// personClass2를 새로운 인스턴스를 만들어 가리키게 함
personClass2 = PersonClass(firstName: "May", lastName: "Yoon")
personClass1.firstName
personClass2.firstName

// 가리키는 인스턴스를 다시 바꿀 수 있다.
personClass1 = personClass2
personClass1.firstName
personClass2.firstName


// Class, Struct 예제
struct Point{
    var x: Int
    var y: Int
}

let point1 = Point(x: 3, y: 5)
let point2 = Point(x: 3, y: 5)


// Value타입과 Reference 타입 비교 
struct Mac{
    var owner: String
}
var myMac = Mac(owner:"Janine")
var yourMac = myMac
yourMac.owner  = "Dee"

myMac.owner
yourMac.owner


