import UIKit

// --- 도전과제
// 1. 강의이름, 강사이름, 학생수를 가지는 Struct 만들기(Lecture)
// 2. 강의 Array와 강사 이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

// --- 프로토콜 적용하기
// CustomStringConvertible

struct Lecture: CustomStringConvertible{
    var description: String {
        // 이 struct에 대한 description을 작성해서 리턴
        return "Title: \(name), Instructor: \(instructor)"
    }
    
    let name : String
    let instructor : String
    let numberOfStudents : Int
}


func printTeacherLecture(lectures: [Lecture], instructor: String) {
//    // --- 기존 함수
//    var lectureName : [String] = []
//
//    for lec in lectures {
//        if instructor == lec.instructor {
//            lectureName += [lec.name]
//        }
//    }
//    if lectureName != [] {
//        print("\(instructor) 강사의 강의 : \(lectureName)")
//    } else {
//        print("\(instructor) 강사의 강의가 없습니다.")
//    }
    
    // --- 클로져를 이용한 함수
    let lectureName = lectures.first{(lec) -> Bool in
        return lec.instructor == instructor
    }?.name ?? ""
    
    print("\(instructor)강사의 강의: \(lectureName)")
}

let lec1 = Lecture(name: "일반생물학", instructor: "Dee", numberOfStudents: 12)
let lec2 = Lecture(name: "자바프로그래밍", instructor: "Janine", numberOfStudents: 30)
let lec3 = Lecture(name: "Swift", instructor: "Janine", numberOfStudents: 12)

let lectures = [lec1, lec2, lec3]

printTeacherLecture(lectures: lectures, instructor: "Janine")

print(lec1)

