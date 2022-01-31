import UIKit

// --- Comment
/*
 여러줄 코멘트를 할 때
 사용하는 /**/
 */

// 한 줄 코멘트일 때 사용하는 //
var greeting = "Hello, playground"

//랜덤 숫자 (0~100 사이)
let value = arc4random_uniform(100)

//디버그 콘솔창에 출력하기
print("-->\(value)")


// --- Tuple 튜플

let coordinates = (4, 6)

let x = coordinates.0
let y = coordinates.1

// 0, 1보다 명시적으로 표현하는 방법

let coordinatesNamed = (x:2, y:3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

// 한줄로 가져올 수 있다.

let (x3, y3) = coordinatesNamed
x3
y3


// --- Boolean 불리언

let yes = true
let no = false

// 비교식을 넣었을 경우 결과값이 변수에 들어감
let isFourGreaterThanFive = 4 > 5

// 코드 흐름을 제어할 때 많이 사용되는 Boolean 타입
if isFourGreaterThanFive {
    print("---> 참")
} else {
    print("---> 거짓")
}

// 조금 더 일반화 한다면
/*
if 조건 {
    // 조건이 참일 때 수행하는 코드
} else {
    // 그렇지 않을 경우 수행되는 코드
}
*/

let a = 5
let b = 10

if a > b {
    print("---> a가 크다.")
} else {
    print("---> b가 크다.")
}

// String을 이용한 예제

let name1 = "Jenn"
let name2 = "Janine"

let isTwoNameSame = name1 == name2

if isTwoNameSame {
    print("---> 이름이 같다")
} else {
    print("---> 이름이 다르다")
}

// 논리연산자 AND, OR

let isJanine = name2 == "Janine"
let isFemale = false //true

// 여러가지 Boolean 타입을 이어서 검사할 때가 있다.
// And 연산자, 두 조건이 모두 참이어야 참
let isJanineAndFemale = isJanine && isFemale

// Or 연산자, 두 조건 중 하나만 참이어도 참
let isJanineOrFemale = isJanine || isFemale

// if-else문으로 확장
//let greetingMessage: String
//if isJanine {
//    greetingMessage = "Hello, Janine"
//} else {
//    greetingMessage = "Hello, Somebody"
//}

// 삼항 연산자 condition?true:false
// 위에 greetingMessage에 대입하는 값을 삼항연산자로 한줄쓰기 가능
let greetingMessage : String = isJanine ? "Hello, Janine" : "Hello, Somebody"
print("Msg: \(greetingMessage)")


// --- Scope 스코프
func calculateSalary () {
    var hours = 50
    let payPerHour = 10000
    var salary = 0

    // 40시간을 초과하면 추가수당을 주는 것으로 계산하기
    if hours > 40 {
        let extraHours = hours - 40
        salary += extraHours * payPerHour * 2
        hours -= extraHours
    }
    salary += hours * payPerHour

    //print(extraHours)
    print(salary)
}

calculateSalary()
