import UIKit

// overroad 오버로드
func printTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}

func printTotalPrice(price: Double, count: Double) {
    print("Total Price: \(price * count)")
}

func printTotalPrice(가격: Int, 갯수: Int) {
    print("Total Price: \(가격 * 갯수)")
}

// In-out Parameter

var value = 3
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

//incrementAndPrint(&value)


// ---> Function as a parameter

func add (_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract (_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add  //함수자체를 이렇게 변수에 할당이 가능함

function(4, 3)
function = subtract
function(4, 2)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b : Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 4, 3)
printResult(subtract, 12, 9)

