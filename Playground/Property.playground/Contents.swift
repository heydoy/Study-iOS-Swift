import UIKit

struct Person {
    // Stored properties
    var firstName: String
    var lastName: String
    
    // Computed properties
    // 컴퓨티드 프로퍼티는 var 키워드만 가능. Read Only
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
        set {
            // computed property에 값을 할당하게 되면
            // newValue가 떨어지게 됨.
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
    }
    // 타입 프로퍼티 Type Property
    static let isAlien: Bool = false
    
}

var person = Person(firstName: "Janine", lastName: "Kim")

person.firstName
person.lastName

person.firstName = "Dee"
person.lastName = "Kim"

person.fullName
person.fullName = "Janine Yoon"

person.fullName
person.firstName
person.lastName

Person.isAlien
