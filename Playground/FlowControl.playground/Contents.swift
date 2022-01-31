import UIKit
import Foundation
// --- While Loop
// 특정 조건에 따라 동작을 반복시킴
/*
while 조건 {
    코드블럭...
}
*/

//var i = 0
//while i < 10 {
//    print(i)
//    i += 1
//}

// break 문 사용
print("---While")
var i = 10
while i < 10 {
    print(i)
//    if j==5 {
//        break
//    }
    i += 1
}

// while-repeat 문 사용
print("---Repeat")
i = 10
repeat {
    print(i)
    i += 1
} while i < 10

// --- For Loop

// range
let closedRange = 0...10
let halfClosedRange = 0..<10

var sum = 0
for i in halfClosedRange {
    print("--->\(i)")
    sum += i
}
print("---> total sum: \(sum)")

// Sum이라는 데이터가 Linear하게 증가함
// 삼각함수 그래프를 그려볼 것

var sinValue: CGFloat = 0
for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

// _ underscore
let name = "Janine"
for _ in closedRange {
    print("---> name : \(name)")
}

// range내의 짝수만 출력하기
for i in closedRange {
    if i % 2 == 0 {
        print("---> 짝수: \(i)")
    }
}

// where 를 이용하여 출력
for i in closedRange where i % 2 == 0 {
    print("---> 짝수: \(i)")
}

// continue, 숫자를 3만 제외하고 출력
for i in closedRange {
    if i == 3 {
        continue
    }
    print("---> \(i)")
}
// where , 숫자를 3만 제외하고 출력하고 싶다면
for i in closedRange where i != 3 {
    print ("---> 3을 제외한 숫자: \(i)")
}

// Nested For Loop

for i in closedRange {
    for j in closedRange {
        print("구구단 -> \(i) * \(j) = \(i * j)")
    }
}

// --- Switch

let num = 10

//switch num {
//case 0 :
//    print("--> 0 입니다.")
//case 10 :
//    print("--> 10 입니다.")
//default :
//    print("--> 그 외 입니다.")
//}

// 구간일 경우 closed range를 사용할 수 있다.
switch num {
case 0 :
    print("--> 0입니다.")
case 0...10 :
    print("--> 0~10입니다.")
case 10 :
    print("--> 10 입니다.")
default :
    print("--> 그 외 입니다.")
}

// String
let pet = "bird"
switch pet {
case "dog", "cat":
    print("---> 댕댕이나 냥이입니다.")
case "bird" :
    print("---> 짹짹입니다.")
default :
    print("---> 잘 모르겠어요.")
}

// Where 문 사용
let number = 20
switch number {
case _ where number % 2 == 0 :
    print("---> 짝수")
default :
    print("---> 홀수")
}

// Tuple 사용
let coordinate = (x: 10, y: 10)
switch coordinate {
case (0, 0) :
    print("원점입니다.")
case (0, _) :
    print ("y축에 있습니다.")
case (_, 0) :
    print("x축에 있습니다.")
default :
    print("좌표 어딘가")
}

// 값이 궁금하다면
switch coordinate {
case (0, 0) :
    print("원점입니다.")
case (0, let y) :
    print ("y축에 있습니다. y: \(y)")
case (let x, 0) :
    print("x축에 있습니다. x : \(x)")
case (let x, let y) where x == y:
    print("x와 y가 같은 케이스 , x, y: \(x),\(y) ")
case (let x, let y) :
    print("좌표 어딘가, x, y: \(x),\(y) ")
}
