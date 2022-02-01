import UIKit

// 함수 실습
func printName() {
    print("---> My name is Dee")
}

printName()

// 파라미터를 인풋으로 받는 예제

// param 1개, 숫자를 받아 10을 곱해 출력

func printMultipleOfTen(value : Int){
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 8)

// param 2개, 물건값과 갯수를 받아서 전체금액을 출력하는 함수

func printTotalPrice(price:Int, count:Int){
    print("Total Price: \(price) * \(count) = \(price * count)")
}

printTotalPrice(price: 1500, count: 5)

// 필요에 따라 파라미터 이름을 안 쓰고 값만 넣어도 되는 경우가 있음

func printTotalPriceWithoutParamName(_ price: Int, _ count: Int){
    print("Total Price: \(price) * \(count) = \(price * count)")
}

printTotalPriceWithoutParamName(4200, 2)

// 또는 함수를 외부에서 쓸 때의 변수 이름과 내부 변수 이름을 다르게 설정할 수도 있다.

func printTotalPriceDifferentParamName(가격 price: Int, 갯수 count: Int){
    print("Total Price: \(price) * \(count) = \(price * count)")
}

printTotalPriceDifferentParamName(가격: 3100, 갯수: 3)

// 스위프트는 한글 지원이 된다.

func 전체가격출력(가격: Int, 갯수: Int) {
    print("가격 = \(가격) * \(갯수) = \(가격*갯수)")
}

전체가격출력(가격: 1200, 갯수: 4)

// 함수 파라미터에 default 값을 넣어줄 수 있다.

func printTotalPriceWithDefaultValue(price: Int = 1500, count: Int){
    print("Total Price: \(price) * \(count) = \(price * count)")
}

printTotalPriceWithDefaultValue(count: 7)

// 함수의 반환(return)값을 설정하기

func totalPrice(price: Int, count: Int) -> Int{
    let totalPrice = price * count
    return totalPrice
}

let calculatedPrice = totalPrice(price: 10000, count: 77)
calculatedPrice
