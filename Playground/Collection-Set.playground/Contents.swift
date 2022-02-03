import UIKit

// Set을 선언하기

var someSet: Set<Int> = [1,2,3,1]
var someArray: Array<Int> = [1,2,3,1]

// Collection의 공통 프로퍼티 : isEmpty, count

someSet.isEmpty
someSet.count

// 공통 메서드 : contains()

someSet.contains(4)
someSet.contains(2)


// 삽입, 삭제

someSet.insert(5)
someSet

someSet.remove(1)
someSet


