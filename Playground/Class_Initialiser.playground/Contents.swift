import UIKit

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
    var grades: [Grade] = []
    
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    
    convenience init(student: Student) {
        self.init(firstName: student.firstName, lastName: student.lastName)
    }
}

class StudentAthlete: Student {
    var mimimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String] ) {
        // Phase 1
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
        
        // Phase 2 : 이때부터 프로퍼티에 접근 가능하고 메소드도 호출 가능
        self.train()
    }
    
    convenience init(name: String){
        self.init(firstName: name, lastName: "", sports: [])
    }
    func train() {
        trainedTime += 1
    }
}

let student1 = Student(firstName: "Janine", lastName: "Lee")
let student1_1 = Student(student: student1)
student1_1
let student2 = StudentAthlete(firstName: "Dee", lastName: "Kim", sports: ["Football"])
let student3 = StudentAthlete(name: "Dubois")
student3



