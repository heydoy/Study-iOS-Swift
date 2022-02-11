import UIKit

// --- 상속의 개념

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

// person1.grades.append(math)

// --- 상속의 규칙과 실습

// 학생인데 운동선수 , 사람 <-학생 <- 운동선수
class StudentAthlete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    
    func train() {
        trainedTime += 1
    }
}

// 운동선수인데 축구선수, 사람 <- 학생 <- 운동선수 <- 축구선수
class FootballPlayer: StudentAthlete {
    var footballTeam = "FC Swift"
    
    // 상속받은 함수를 변경시킬 때 override 키워드를 사용
    override func train() {
        trainedTime += 2
    }
}

// 인스턴스 만들기

var athelete1 = StudentAthlete(firstName: "Junhwan", lastName: "Cha")

var athelete2 = FootballPlayer(firstName: "Heungmin", lastName: "Son")

athelete1.firstName
athelete2.firstName

athelete1.grades.append(math)
athelete2.grades.append(math)

athelete1.minimumTrainingTime
athelete2.minimumTrainingTime

athelete2.footballTeam
//athelete1.footballTeam

athelete1.train()
athelete1.trainedTime
athelete2.train()
athelete2.trainedTime


//uppercast
athelete1 = athelete2 as StudentAthlete

athelete1.train()
athelete1.trainedTime

//downcast
if let son = athelete1 as? FootballPlayer {
    print("--> \(son.footballTeam)")
}
