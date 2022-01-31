import UIKit

//// --- Comment
///*
// 여러줄 코멘트를 할 때
// 사용하는 /**/
// */
//
//// 한 줄 코멘트일 때 사용하는 //
//var greeting = "Hello, playground"
//
////랜덤 숫자 (0~100 사이)
//let value = arc4random_uniform(100)
//
////디버그 콘솔창에 출력하기
//print("-->\(value)")


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
