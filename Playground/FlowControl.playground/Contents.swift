import UIKit

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
