import UIKit

// 문제 : 가장 가까운 편의점 찾기


// 맨 처음 시작 시, Structure 없이 코드
// 현재 스토어 위치들
let store1 = (x: 3, y: 5, name: "gs") // 튜플 형태로 만듬
let store2 = (x: 4, y: 6, name: "seven")
let store3 = (x: 1, y: 7, name: "cu")

// 거리 구하는 함수
func distance(current: (x: Int, y: Int), target: (x:Int, y:Int)) -> Double {
    // 피타고라스
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

// 가장 가까운 스토어 구해서 프린트하는 함수
func printClosestStore(currentLocation:(x: Int, y: Int), stores:[(x: Int, y: Int, name: String)]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    
    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: (x: store.x, y: store.y))
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
        }
    }
    print("Closest store: \(closestStoreName)")
}

// Stores array 세팅, 현재 내 위치 세팅
let myLocation = (x: 2, y: 2)
let stores = [store1, store2, store3]

// printClosestStore 함수 이용해서 현재 가장 가까운 스토어 출력하기
printClosestStore(currentLocation: myLocation, stores: stores )


// Improve Code using Structure
// - Make Location struct
struct Location {
    let x: Int
    let y: Int
}

// 거리구하는 함수
func distance2(current: Location, target: Location) -> Double {
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

// - Make Store struct
struct Store {
    let loc: Location
    let name: String
    let deliveryRange = 2.0
    
    // 배달가능한지 체크하는 메소드 선언
    func isDeliverable(userLoc: Location) -> Bool {
        let distanceToStore = distance2(current: userLoc, target: loc)
        return distanceToStore < deliveryRange
    }
}

// 스토어 선언
let store4 = Store(loc: Location(x: 3, y: 5), name: "gs")
let store5 = Store(loc: Location(x: 4, y: 6), name: "seven")
let store6 = Store(loc: Location(x: 1, y: 7), name: "cu")



// 가장 가까운 스토어 구해서 프린트하는 함수
func printClosestStore2(currentLocation: Location, stores: [Store]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    var isDeliverable = false
    
    for store in stores {
        let distanceToStore = distance2(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
            isDeliverable = store.isDeliverable(userLoc: currentLocation)
        }
    }
    print("Closest store: \(closestStoreName), isDeliverable: \(isDeliverable)")
}

// Store Array 세팅, 현재 내 위치 세팅
let myLocation2 = Location(x:2, y:5)
let stores2 = [store4, store5, store6]

// 함수 이용해서 가장 가까운 스토어 출력하기
printClosestStore2(currentLocation: myLocation2, stores: stores2)



// --- Class vs. Structure 동작 차이 알아보기

class PersonClass {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


struct PersonStruct {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let pClass1 = PersonClass(name: "Janine", age: 25)
let pClass2 = pClass1
pClass2.name = "Hey"

pClass1.name
pClass2.name


var pStruct1 = PersonStruct(name: "Janine", age: 25)
var pStruct2 = pStruct1
pStruct2.name = "Hey"

pStruct1.name
pStruct2.name

