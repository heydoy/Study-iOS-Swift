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

// printClosestStore 함수 이용해서 현재 가장 가까운 스토어 출력하기 
