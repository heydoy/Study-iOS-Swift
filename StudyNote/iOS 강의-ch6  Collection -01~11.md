# iOS 강의-ch6  Collection -01~11

# iOS # 강의# -ch6  Collection -01~11

## 01. Collection ## 콜렉션##  ## 소개## 

실제 앱 서비스에서도 많은 변수들을 사용하고 있다. 많은 변수들을 어떻게 관리할 것인가? 

커피를 여러잔 시키면 캐리어를 통해 가져가듯, 많은 변수들을 통에 넣어 관리할 수 있도록 통에 대응되는 개념인 collection을 제공. 

- Swift의 Collection
- Array
- Dictionary
- Set

추가로 
* Closure : 수행할 수 있는 코드를 적어놓은 코드블럭 

에 대해 다룰 것. 

클로져를 콜렉션과 함께 이용하여 어떻게 강력한 기능을 이용할 수 있을 지에 대해 다룰 예정.

## 02-04. Array## 의##  ## 개념## , ## 실습## 

Array와 Dictionary는 회사에서 서비스 개발할 때 필수로 쓰는, 꼭 알아야할 개념 

- Array란 

배열은 기본적으로 element 요소들이 순서에 따라 통에 담김. 

* Array에 담을 때는 **_같은_****_ _****_타입_**으로만 담아야 한다.
* Array에는 **_순서_**가 있다. Index 인덱스 (0, 1, 2, … , n)

- Array의 적절한 사용처 

* 순서가 있는 아이템

* 아이템의 순서를 알면 유용할 때 

e.g. 영화/도서의 랭킹

- Array의 선언 

let(var) ArrayName : [ArrayType] = [Value1, Value2, … ValueN]

let(var) ArrayName: Array<ArrayType> = [Value1, Value2, … ValueN]

![iOS 강의-ch6  Collection -01~11](images/iOS%20강의-ch6%20%20Collection%20-01~11.png)

빈 배열을 넣을 수도 있다. 
![iOS 강의-ch6  Collection -01~11-1](images/iOS%20강의-ch6%20%20Collection%20-01~11-1.png)

- Array 요소 추가 

ArrayName.append(Element)
ArrayName += [Element1, Element2, Element3]
ArrayName.append(contensOf: [Element4, Element5])

![iOS 강의-ch6  Collection -01~11-2](images/iOS%20강의-ch6%20%20Collection%20-01~11-2.png)

- Array의 속성

- isEmpty 프로퍼티를 이용하여 배열이 비었는지 아닌지를 알 수 있음. true일 경우 빈 배열

![iOS 강의-ch6  Collection -01~11-3](images/iOS%20강의-ch6%20%20Collection%20-01~11-3.png)

* count 프로퍼티를 이용하여 요소 갯수를 구할 수 있음. 반환하는 값이 갯수 

![iOS 강의-ch6  Collection -01~11-4](images/iOS%20강의-ch6%20%20Collection%20-01~11-4.png)

* first , last 프로퍼티 : 첫번째값, 마지막 값

![iOS 강의-ch6  Collection -01~11-5](images/iOS%20강의-ch6%20%20Collection%20-01~11-5.png)

값이 옵셔널로 옴. 

![iOS 강의-ch6  Collection -01~11-6](images/iOS%20강의-ch6%20%20Collection%20-01~11-6.png)

때문에 배열이 비었을 때 nil로 반환됨. 

![iOS 강의-ch6  Collection -01~11-7](images/iOS%20강의-ch6%20%20Collection%20-01~11-7.png)

* min(), max() 메서드 : 최소값, 최대값

![iOS 강의-ch6  Collection -01~11-8](images/iOS%20강의-ch6%20%20Collection%20-01~11-8.png)

* 인덱스를 통해 값 가져오기 

ArrayName[index] 

![iOS 강의-ch6  Collection -01~11-9](images/iOS%20강의-ch6%20%20Collection%20-01~11-9.png)

* 인덱스가 배열의 범위 밖일 때 

![iOS 강의-ch6  Collection -01~11-10](images/iOS%20강의-ch6%20%20Collection%20-01~11-10.png)

Index Out of Range Error
방지하기 위한 방어코드들을 잘 써야한다. 

* Array 를 관리할 때 range도 쓸 수 있다.

![iOS 강의-ch6  Collection -01~11-11](images/iOS%20강의-ch6%20%20Collection%20-01~11-11.png)

index를 range를 활용하여 가져올 수 있다. 

* contains() 메소드를 이용하여 배열에 값이 있는지 확인 

![iOS 강의-ch6  Collection -01~11-12](images/iOS%20강의-ch6%20%20Collection%20-01~11-12.png)

* insert() 메소드로 특정 인덱스에 새로운 값 삽입 

![iOS 강의-ch6  Collection -01~11-13](images/iOS%20강의-ch6%20%20Collection%20-01~11-13.png)

0번째에 삽입하고, 기존 값들이 한칸씩 밀린다. 

* remove() 메소드로 배열 요소 삭제 / removeAll() 메소드로 배열 전체요소 삭제 

![iOS 강의-ch6  Collection -01~11-14](images/iOS%20강의-ch6%20%20Collection%20-01~11-14.png)

remove(at:위치인덱스) 는 해당 인덱스에 있는 값을 반환한다. 

* 요소 값 업데이트 (range 이용할 수 있다.)

![iOS 강의-ch6  Collection -01~11-15](images/iOS%20강의-ch6%20%20Collection%20-01~11-15.png)

* swapAt() 메서드로 Swap이 가능

![iOS 강의-ch6  Collection -01~11-16](images/iOS%20강의-ch6%20%20Collection%20-01~11-16.png)

* for loop 

![iOS 강의-ch6  Collection -01~11-17](images/iOS%20강의-ch6%20%20Collection%20-01~11-17.png)

* index, value를 가져오는  for loop

for (index, value) in arrayName.enumerated() {}

![iOS 강의-ch6  Collection -01~11-18](images/iOS%20강의-ch6%20%20Collection%20-01~11-18.png)

* 배열의 요소는 건드리지 않되, 특정 영역을 제외한 값들의 목록을 보고 싶을 경우 

![iOS 강의-ch6  Collection -01~11-19](images/iOS%20강의-ch6%20%20Collection%20-01~11-19.png)

dropFirst(number) 메소드를 사용할 경우, 소괄호 안에 있는 숫자 갯수만큼 앞에서부터 [from First] 세서 그 부분만 제외하고 요소 목록을 보여줌(=반환함). 

![iOS 강의-ch6  Collection -01~11-20](images/iOS%20강의-ch6%20%20Collection%20-01~11-20.png)

dropLast()도 할 수 있음. 

* 일부만 보고 싶은 경우 

![iOS 강의-ch6  Collection -01~11-21](images/iOS%20강의-ch6%20%20Collection%20-01~11-21.png)

prefix()는 앞에서부터, suffix()는 뒤에서부터 

* 결론

Array에는 굉장히 많은 프로퍼티와 메서드가 있는데 이를 다 기억할 필요는 없다. 

컬렉션에서는 4가지 정도만 기억하면 된다. 이들은 실무에서도 많이 사용하는 편. 

: isEmpty, count, 해당 인덱스를 통해 접근하는 법(ArrayName[Index]) , for loop 사용법 

## 05-06. Dictionary ## 개념과##  ## 실습## 

Array와 마찬가지로 실무에서 많이 쓰이는 타입 

- Dictionary란?
- Array와 다르게 순서가 없다. 
- Key와 Value로 짝이 되어 구성한다.

: Key는 Unique해야 한다. 유일해야 한다. 

- Dictionary의 사용처 

값을 찾을 때 순서가 아닌 **의미**** ****단위**로 찾아야 될 때 유용 

- Dictionary vs. Array

배열은 순서기반, 딕셔너리는 키Key 기반. 

e.g. 학생들의 점수를 관리할 때, 순서와 상관없이 이름과 성적이 짝인 데이터의 경우 딕셔너리가 훨씬 유용할 것. 

- Dictionary의 선언 

var dictionaryName: [keyType: valueType] = [ key1:value1, key2:value2, …, keyN:valueN]

var dictionaryName: Dictionary<keyType, valueType> = [ key1:value1, key2:value2, …, keyN:valueN]

![iOS 강의-ch6  Collection -01~11-22](images/iOS%20강의-ch6%20%20Collection%20-01~11-22.png)

- 값을 가져오기 

![iOS 강의-ch6  Collection -01~11-23](images/iOS%20강의-ch6%20%20Collection%20-01~11-23.png)

딕셔너리에 없는 값일 경우 nil을 반환 

옵셔널이기 때문에 안정적으로 가져오려면 if let을 통해 옵셔널 바인딩을 해주어 안정적으로 가져올 수 있다. 

![iOS 강의-ch6  Collection -01~11-24](images/iOS%20강의-ch6%20%20Collection%20-01~11-24.png)

- 컬렉션의 공통 프로퍼티 isEmpty, count

![iOS 강의-ch6  Collection -01~11-25](images/iOS%20강의-ch6%20%20Collection%20-01~11-25.png)

- 기존 키의 값을 업데이트 

dictionary[Key] = value

![iOS 강의-ch6  Collection -01~11-26](images/iOS%20강의-ch6%20%20Collection%20-01~11-26.png)

- 새로운 엘리먼트 추가 

dictionary[Key] = value

![iOS 강의-ch6  Collection -01~11-27](images/iOS%20강의-ch6%20%20Collection%20-01~11-27.png)

- 엘리먼트 제거 

dictionary[Key] = nil

![iOS 강의-ch6  Collection -01~11-28](images/iOS%20강의-ch6%20%20Collection%20-01~11-28.png)

- 반복문 (For loop) 

for (key, value) in dictionaryName {
}

![iOS 강의-ch6  Collection -01~11-29](images/iOS%20강의-ch6%20%20Collection%20-01~11-29.png)

- key값만 보기

![iOS 강의-ch6  Collection -01~11-30](images/iOS%20강의-ch6%20%20Collection%20-01~11-30.png)

dictionary.keys

- value 값만 보기 

![iOS 강의-ch6  Collection -01~11-31](images/iOS%20강의-ch6%20%20Collection%20-01~11-31.png)

dictionary.values

- 도전과제 
- 이름, 직업, 도시에 대해서 본인의 딕셔너리 만들기 
- 여기서 도시를 부산으로 업데이트 하기 
- 딕셔너리를 받아서 이름과 도시를 프린트하는 함수 만들기 

![iOS 강의-ch6  Collection -01~11-32](images/iOS%20강의-ch6%20%20Collection%20-01~11-32.png)

—> 다른 방식이어야. 

![iOS 강의-ch6  Collection -01~11-33](images/iOS%20강의-ch6%20%20Collection%20-01~11-33.png)

## 07. Set ## 개념과##  ## 실습## 

- Set 이란?
- 순서가 없다.
- Unique한 아이템만 들어있다. (중복된 값 X)

- Set의 사용처

- 중복이 없는 유니크한 아이템을 관리할 때 

- Set 선언 

var setName: Set<Type> = [value, value2]

![iOS 강의-ch6  Collection -01~11-34](images/iOS%20강의-ch6%20%20Collection%20-01~11-34.png)

Set과 Array는 선언 방식과 형태가 비슷하지만, 중복된 값이 있어도 Array는 순서기반(=인덱스)으로, Set은 중복된 값을 제거하며 순서는 의미가 없다. 

- Collection의 공통 프로퍼티 isEmpty, count

![iOS 강의-ch6  Collection -01~11-35](images/iOS%20강의-ch6%20%20Collection%20-01~11-35.png)

- 공통 메서드 contains()

![iOS 강의-ch6  Collection -01~11-36](images/iOS%20강의-ch6%20%20Collection%20-01~11-36.png)

- 요소의 삽입, 삭제 : insert(), remove()

![iOS 강의-ch6  Collection -01~11-37](images/iOS%20강의-ch6%20%20Collection%20-01~11-37.png)

## 08. Closure ## 개념과##  ## 실습## 

액자앱에서 Closure를 사용해본 적이 있음. 

let action = UIAlertAction(title: "ok", style: .default, handler: { action in self.refresh() 
})

handler 쪽에서 사용한 것이 클로져 

여기서 클로져는 ok 버튼을 눌렀을 때 수행되는 코드블럭 

- Closure 란?

쉽게 생각하면, **_이름이_****_ _****_없는_****_ _****_함수_** (=익명함수) 

- Closure 선언 

![iOS 강의-ch6  Collection -01~11-38](images/iOS%20강의-ch6%20%20Collection%20-01~11-38.png)

함수 선언과 매우 유사하다. 

- 함수에서 클로져를 파라미터로 받는 경우 

![iOS 강의-ch6  Collection -01~11-39](images/iOS%20강의-ch6%20%20Collection%20-01~11-39.png)

미리 클로저를 만든 변수를 파라미터로 넣거나, 파라미터 위치에 클로저를 새로 만들 수도 있다. 

![iOS 강의-ch6  Collection -01~11-40](images/iOS%20강의-ch6%20%20Collection%20-01~11-40.png)

*** 
// 공부 어려울 때 메일로 보내라고 :) codeForEveryoneJoonwon+02
@gmail.com

## 09. Closure - Capturing Value
Closure도 중괄호를 열고 닫기 때문에 scope 가 생긴다. 

본래는 스코프 안에 선언된 변수는 바깥에서 사용할 수 없다. 그러나 Closure에 captured 된 value는 사용가능. 

![iOS 강의-ch6  Collection -01~11-41](images/iOS%20강의-ch6%20%20Collection%20-01~11-41.png)

여기서 if true 는 바깥쪽 scope,
printClosure 는 안쪽 scope

여기서 printClosure는 if문 바깥에서도 사용이 가능하고, if 문 안에 있는 name constant 는 사용이 가능하다. 이것을 captured  value 라고 한다. closure가 살아있는 한 잡힌 변수는 스코프를 벗어나도 사용이 가능하다. 

스위프트에서 제공하는 클로져의 강력한 기능중 하나 : Capturing Value

- 실습 

![iOS 강의-ch6  Collection -01~11-42](images/iOS%20강의-ch6%20%20Collection%20-01~11-42.png)

스코프를 벗어났지만 count 변수의 숫자는 계속 늘어난다. 

*** 스위프트를 이용한 프로그래밍을 할 때 클로져는 항상 등장하기 때문에 잘 알아두어야 한다. 

*** 많이 보고 많이 봐야 빨리 이해할 수 있다. 

## 1## 0-11. (## 보강## ) Closure ## 개념## , ## 실습## 

- Closure 란?

함수는 func 키워드를 이용해서 만들고, 함수는 어떤 기능을 수행하는 코드 블록이다. 

Swift에서는 함수처럼, 기능을 수행하는 코드블록의 특별한 타입 : Closure 가 있다. 

** 정확히 얘기하자면 함수는 Closure의 한 가지 타입이다. 

** Closure는 크게 3가지 타입이 있다. 
1) Global 함수 : 앞서 배운 함수 
2) Nested 함수 : 함수 안에 함수를 정의할 수 있는 함수 
3) Closure Expressions : 우리가 배운 클로져는 정확히는 Closure Expressions.

https://docs.swift.org/swift-book/LanguageGuide/Closures.html

스위프트 도큐먼트에서 정확한 정의를 확인할 수 있다. 

![iOS 강의-ch6  Collection -01~11-43](images/iOS%20강의-ch6%20%20Collection%20-01~11-43.png)

: Closure expressions는 가변 문법으로 쓰인 이름이 없는 클로져로, 주변의 값을 캡쳐할 수 있다. 

- Closure의 특징: 함수처럼 기능을 수행하는 코드블록, 함수와 다르게 이름이 없다.   
- 함수 vs. Closure

|  Function(Global)<br/> | Closure<br/> |
|-----|-----|
|  이름이 있다. <br/> | 이름이 없다.<br/> |
|  func 키워드 필요 <br/> | 키워드 필요 없음<br/> |
|  인자를 받을 수 있다.<br/> | 상동<br/> |
|  값을 리턴할 수 있다.<br/> | 상동<br/> |
|  변수로 할당할 수 있다.<br/> | 상동<br/> |
|  First Class Type이다.<br/> | 상동<br/> |
|  레퍼런스 타입이다.<br/> | 상동<br/> |

그 외에도 공통점과 차이점이 더 있다.

*** First Class Type이란?
* 변수에 할당할 수 있다.

* 인자로 받을 수 있다.
* 리턴할 수 있다.

함수와 클로져 자체도 이 3가지를 할 수 있다.

- Closure가 어떻게 실무에서 쓰이는 지 

크게 두가지

**1)Completion Block**
어떤 태스크가 완료가 되어있을 때 클로져가 수행되면서 자주 쓰인다. 

e.g. 예를 들어 앱이 네트워크를 통해서 데이터를 받아올 때, 네트워크 환경에 따라 데이터가 늦게, 또는 빨리 받아질 수 있다. 이렇게 비동기적으로, 언제 끝날지 모르는 일에 대해서는 해당 일이 끝나고 뭔가를 수행시킬 때 "클로져가 수행된다."

**2)Higher Order Function**
인풋으로 함수를 받을 수 있는 함수를 Higher Order Function이라고 한다. 인자와 반환값을 함수로 받을 수 있는 함수이다.  한국어로 **고계함수**. 

인자를 줄 때 함수를 줄 수 있지만, 클로져로 바로 만들어서 넘겨줄 수 있다. 

대표적인 고계함수로는, Map이나 Filter 등이 있다. 고계함수를 사용할 때 클로져를 많이 사용하게 된다. 

** 클로져처럼 어려운 개념은 실제로 직접 써보면서 알게된다. 

- Closure Syntax 클로저 문법 

![iOS 강의-ch6  Collection -01~11-44](images/iOS%20강의-ch6%20%20Collection%20-01~11-44.png)

여기서 주목할 것은 in 키워드 

- Closure 실습 @ Playground

![iOS 강의-ch6  Collection -01~11-45](images/iOS%20강의-ch6%20%20Collection%20-01~11-45.png)

1) 가장 단순한 형태의 클로저 
![iOS 강의-ch6  Collection -01~11-46](images/iOS%20강의-ch6%20%20Collection%20-01~11-46.png)

() -> ()
이것 자체는 클로저의 타입. 
인풋도 없고, 아웃풋도 없고, statement도 없음.

2) 인풋, 아웃풋은 없고 statement는 있는 클로저 
![iOS 강의-ch6  Collection -01~11-47](images/iOS%20강의-ch6%20%20Collection%20-01~11-47.png)

3)인풋이 있는 Closure

![iOS 강의-ch6  Collection -01~11-48](images/iOS%20강의-ch6%20%20Collection%20-01~11-48.png)

4)값을 리턴하는 클로져

![iOS 강의-ch6  Collection -01~11-49](images/iOS%20강의-ch6%20%20Collection%20-01~11-49.png)

5) Closure를 파라미터로 받는 함수 구현 
![iOS 강의-ch6  Collection -01~11-50](images/iOS%20강의-ch6%20%20Collection%20-01~11-50.png)

클로져를 파라미터로 받아서 함수 내부에서 실행할 수 있다. 

6)Trailing Closure

함수의 파라미터가 여러개이고, 클로저도 그 인자를 받을 때, 클로저가 마지막 인자일 경우에는 코드적으로 생략할 수 있는게 있다.

![iOS 강의-ch6  Collection -01~11-51](images/iOS%20강의-ch6%20%20Collection%20-01~11-51.png)

functionName(param1: value1, param2, value2) {
	closure statement… 
}

-끝-
