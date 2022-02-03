import UIKit
import Foundation

// ---- Closure의 일반화된 형태
/*
{ (param) -> return type in
    statement
    ...
}
*/

// Example 1: Simple Closure
// parameter, return, statement도 없는 형태
let simpleClosure = {

}

simpleClosure()

// Example 2: 코드 블록을 구현한 Closure

let simpleClosure2 = {
    print("Hello, Closure!")
}

simpleClosure2()

// Example 3: 인풋 파라미터를 받는 Closure

let simpleClosure3: (String) -> Void = { name in
    print("안녕, \(name)")
}

simpleClosure3("Dee")

// Example 4: 값을 리턴하는 Closure

let simpleClosure4: (String) -> String = { name in
    let message = "\(name), 공부 화이팅!"
    return message
}

let result = simpleClosure4("Janine")
print(result)



// Example 5: Closure를 파라미터로 받는 함수 구현

func someSimpleFunction(simpleClosure: () -> Void) {
    simpleClosure()
    print("함수에서 호출이 되었어요.")
}

someSimpleFunction(simpleClosure: {
    print("클로져를 실행했어요.")
})


// Example 6: Trailing Closure
// 함수의 파라미터가 여러개이고, 클로저도 그 인자를 받을 때, 클로저가 마지막 인자일 경우에는 코드적으로 생략할 수 있는게 있다.


func someSimpleFunction2(message: String, simpleClosure: (String) -> Void) {
    simpleClosure(message)
}

someSimpleFunction2(message: "Q. 어떤 생각들을 하고 계시나요?\n", simpleClosure: { msg in
    print("\(msg)A. 복잡합니다.")
})

// Trailing Closure

someSimpleFunction2(message: "안녕"){
    print("\($0), :)")
    
}
