import UIKit

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
    var grades: [Grade] = []
}

var person1 = Person(firstName: "Janine", lastName: "Min")
var student1 = Student(firstName: "Dee", lastName: "Kim")

student1.firstName
person1.lastName

let math = Grade(letter: "B", points: 8.4, credits: 3)
let history = Grade(letter: "A", points: 10, credits: 3)

student1.grades.append(math)
student1.grades.append(history)

student1.grades.count

person1.grades.append(math) 
