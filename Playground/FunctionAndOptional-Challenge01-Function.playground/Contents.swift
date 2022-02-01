import UIKit
// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기
func printFullName(firstName : String, lastName : String) {
    print("---> Fullname: \(firstName) \(lastName)")
}

// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname을 출력하는 함수 만들기
func printFullName(_ firstName : String, _ lastName : String ){
    print("---> Fullname: \(firstName) \(lastName)")
}

// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기

func fullName(firstName: String, lastName: String) -> String {
    let name = "\(firstName) \(lastName)"
    return name
}

printFullName(firstName: "Dee", lastName: "Kim")
printFullName("Dee", "Kim")
let name = fullName(firstName: "Dee", lastName: "Kim")
print(name)


