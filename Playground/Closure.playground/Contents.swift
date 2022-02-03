import UIKit

// Closure를 구현
// 두개의 수를 곱하는 Closure를 만들자
// 함수와 굉장히 비슷한 모양새. 파라미터 이름이 따로 없음.

var multiplyClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a * b
}

// 간소화
var multiplyClosure2: (Int, Int) -> Int = { a, b in
    return a * b
}
var multiplyClosure3: (Int, Int) -> Int = { $0 * $1 }

// $는 들어온 순서 인덱스

let result = multiplyClosure(4,3)


// Closure가 괜찮다고 느끼는 예제
// 실무를 하다보면 메소드에서 클로져를 파라미터로 받는 경우가 많음.

func operateTwoNum(a: Int, b: Int, operation : (Int, Int) -> Int) -> Int {
    let result = operation(a,b)
    return result
}

operateTwoNum(a: 4, b: 3, operation: multiplyClosure )

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}

operateTwoNum(a: 4, b: 3, operation: addClosure )

// Closure를 미리 만들지 않고 파라미터로 보낼 때 만드는 것
operateTwoNum(a: 6, b: 2, operation: {a, b in
    return a/b
})

operateTwoNum(a: 4, b: 3) {a, b in
    return a % b
}

// 인풋, 아웃풋이 없는 클로져

let voidClosure: () -> Void = {
    print("iOS 공부하고 있는 킴디 ")
}

voidClosure()


// Closure - Capturing Valuess

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()

count


