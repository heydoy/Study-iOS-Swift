import UIKit

// --- Optional 옵셔널 기초

var carName: String?
carName = nil
carName = "테슬라"

// 아주 간단한 과제
// 1. 최애하는 영화배우의 이름을 담는 변수를 작성 (타입 String?)
// 2. let num = Int("10") -> 타입은 뭘까.

var favoriteMovieStar: String?

let num = Int("10") // Int? 정수형 옵셔널 형태가 됨.
let num2 = Int("hi")

// -- Optional 옵셔널 고급기능 4가지
//  * Forced Unwrapping
// >>> Optional이라는 박스안에 값을 꺼내서 사용해야 될 때가 있다.
// >>> 박스를 언박싱할 때 강제로 하는 것
//  * Optional Binding (if let) > 부드럽게 박스를 까는 것
//  * Optional Binding (guard) > 부드럽게 박스를 까는 것
//  * Nil Coalescing > 박스를 깠을 때 값이 없으면 디폴트 값을 주는 것.

// -- Forced Unwrapping
//print(carName)
//print(carName!) // 박스를 까서 값만 가져오는 것

carName = nil
//print(carName!)

// -- Optional Binding(if let)
//if let unwrappedCarName = carName {
//    print(unwrappedCarName)
//} else {
//    print("차 이름이 없습니다.")
//}

// 함수에 넣어서 보자
func printParsedInt(_ from: String) {
    if let parsedInt = Int(from) {
            print(parsedInt)
    } else {
        print("Int로 컨버팅할 수 없습니다.")
    }
}
//printParsedInt("100")
printParsedInt("Heyyy")

// -- Optional Binding (guard)
// 위처럼 if let을 이용하게 되면 코드의 복잡도가 올라감.

func printParsedIntWithGuard(_ from: String){
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅이 되지 않습니다.")
        return
    }
    print(parsedInt)
}

// -- Nil Coalescing

carName = "Wrangler"
let myCarName: String = carName ?? "GV80"

// --- 도전과제
// 1. 최애 음식이름을 담는 변수를 작성 (String?)
// 2. 옵셔널 바인딩을 이용하여 값을 확인해보기
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 : 입력 파라미터는 String?

var myFavoriteFood : String? = "아이스 아메리카노"
print(myFavoriteFood ?? "없어요")

if let favoriteFood = myFavoriteFood{
    print(favoriteFood)
} else {
    print("값이 없습니다.")
}


func printNickName(_ input: String?) {
    //forced unwrapping
    //print(input!)
    
    guard let nickName = input else {
        print("닉네임을 만드세요.")
        return
    }
    print(nickName)
}
// 파라미터가 옵셔널이기 때문에 nil을 인자로 넘겨줄 수 있다.
printNickName(nil)

