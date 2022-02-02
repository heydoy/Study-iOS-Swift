import UIKit

// 딕셔너리의 선언

var scoreDic : [String: Int] = ["Janine": 80, "Jenn": 90, "Dee": 100 ]

var scoreDic2 : Dictionary<String, Int> = ["Janine": 80, "Jenn": 90, "Dee": 100 ]

// 값을 가져오기

scoreDic["Dee"]
scoreDic["Choi"]


// 옵셔널 바인딩을 통해 안정적으로 값을 가져오기
if let score = scoreDic["Minn"] {
    print(score)
} else {
    print("값이 없습니다.")
}

// 컬렉션의 공통 프로퍼티 isEmpty, count
scoreDic.isEmpty
scoreDic.count
//scoreDic = [:] // 이렇게 빈 딕셔너리를 만들어준다.
//scoreDic.isEmpty

// 기존 키의 값을 업데이트
scoreDic["Janine"] = 90
scoreDic

// 엘레먼트를 추가
scoreDic["June"] = 99
scoreDic

// 엘레먼트 제거
scoreDic["June"] = nil
scoreDic

// for loop 반복문
for (name, score) in scoreDic {
    print("\(name) : \(score)")
}

for key in scoreDic.keys {
    print(key)
}
scoreDic.keys

for value in scoreDic.values {
    print(value)
}
scoreDic.values

// --- 도전과제
//1. 이름, 직업, 도시에 대해서 본인의 딕셔너리 만들기
//2. 여기서 도시를 부산으로 업데이트 하기
//3. 딕셔너리를 받아서 이름과 도시를 프린트하는 함수 만들기

var jobDic : [String: String] = ["Dee": "Student"]
var cityDic : [String: String] = ["Dee":"Seoul"]

cityDic["Dee"] = "Busan"

func printNameAndCity(_ dic: [String: String]){
    for (name, city) in dic {
        print("이름: \(name)\n도시: \(city)")
    }
}
printNameAndCity(cityDic)


var myDic : [String: String] = ["name":"Dee", "job":"Student", "city":"Seoul"]

myDic["city"] = "Busan"

func printCity(_ dic: [String: String]){
    //print("\(dic["name"]!) : \(dic["city"]!)")
    if let name = dic["name"], let city=dic["city"]{
        print("\(name) : \(city)")
    } else {
        print("---> cannot bound")
    }
}
printCity(myDic)




