import UIKit

// Array 선언
var evenNumbers: [Int] = [2,4,6,8]
let evenNumbers2: Array<Int> = [2,4,6,8]

// Array의 Element 요소 추가
evenNumbers.append(10)
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18,20])

// Array의 속성
let isEmpty = evenNumbers.isEmpty
evenNumbers.count
print(evenNumbers.first)
//evenNumbers = []
evenNumbers.last

if let firstElement = evenNumbers.first {
    print("---> first item is : \(firstElement)")
}

evenNumbers.min()
evenNumbers.max()

evenNumbers[1]

//evenNumbers[12]

// ----->

// range
let firstThree = evenNumbers[0...2]

// contain() 메소드
evenNumbers.contains(3)
evenNumbers.contains(4)

// 새로운 값 삽입
evenNumbers.insert(0, at:0)

// 요소 삭제
//evenNumbers.remove(at: 3)
//evenNumbers.removeAll()
//evenNumbers = []

// 요소 업데이트
evenNumbers[0] = -2
evenNumbers[0...2] = [-2, 0, 2]
evenNumbers

// 요소 스왑
evenNumbers.swapAt(0, 2)

// for loop in Array

for num in evenNumbers {
    print(num)
}

for (idx, num) in evenNumbers.enumerated() {
    print("idx: \(idx), value: \(num)")
}

// 원본 변화 없이, 일부 요소를 제외한 배열 요소를 확인하는 법
evenNumbers.dropFirst(3)
evenNumbers

evenNumbers.dropLast(7)
evenNumbers

// 일부만 보고 싶은 경우
evenNumbers.prefix(3)
evenNumbers.suffix(4)
evenNumbers


