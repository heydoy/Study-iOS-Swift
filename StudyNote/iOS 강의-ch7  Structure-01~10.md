# iOS 강의-ch7  Structure-01~10

# iOS # 강의# -ch7  Structure-01~10

## 01. ## 구조체와##  ## 클래스##  ## 차이##  

지금까지 배워온 것은 Basic Type : integer, string, etc… 

값들을 많이 저장할 때 서로 관계가 있는 값들을 한꺼번에 관리하고 표현하고자 할 때 Structure를 통해 해결할 수 있다. 

Structure : 관계가 있는 것들을 묶어서 표현한다.
Object : 역시 관계 있는 것들을 묶어서 표현한다.  오브젝트는 Data+Method 

오브젝트가 실제로 구현될 수 있는 방식은 Structure와 Class, 두 가지가 있다. 

- Structure vs. Class

기본적으로 이 두가지 타입은 동작이 다르다. 

|  Structure<br/> | Class<br/> |
|-----|-----|
|  Value Types<br/> | Reference Types<br/> |
|  Copy<br/> | Share<br/> |
|  Stack에서 생성됨<br/> | Heap에서 생성됨<br/> |

두 타입의 근본적인 속성이 다르다. 

때문에 변수를 생성해서 할당할 때 Structure는 복사되어 할당되고, Class는 참조(공유)되어 할당된다. 

클래스의 경우 이미 생성된 인스턴스를 새로운 변수에 할당할 때 새로운 변수는 기존 클래스를 포인팅하게 된다. 모두 하나의 인스턴스를 바라보고 있게 된다. 

반면에 스트럭쳐는 새로운 변수에 할당될 때 기존의 것을 복사해서 새로운 인스턴스를 만들어 할당한다. 

![iOS 강의-ch7  Structure-01~10](images/iOS%20강의-ch7%20%20Structure-01~10.png)

컴퓨터 내에 할당되는 메모리가 다르다. Structure 는 Stack, Class 는 Heap에서 생성된다. 공간의 차이 때문에 동작의 차이도 생겨남. 

## 02. ## 구조체##  ## 실습## 

문제: 가장 가까운 편의점 찾기를 통해 구조체 실습 
![iOS 강의-ch7  Structure-01~10-1](images/iOS%20강의-ch7%20%20Structure-01~10-1.png)

⬇️

![iOS 강의-ch7  Structure-01~10-2](images/iOS%20강의-ch7%20%20Structure-01~10-2.png)

단위로 묶으면서, 흩어져있는 정보를 의미 단위로 표현할 수 있게 되었다. 의미단의로 묶어야 가독성이 높아지고, 묶었을 때 재사용성이나 한 번에 리팩토링하기에도 편하다. 

- Structure에 메소드 선언 

Structure도 오브젝트로 표현될 수 있는 하나의 타입. 오브젝트는 메서드를 만들 수 있기 때문에 Structure에 메소드를 만들 수 있다. 

![iOS 강의-ch7  Structure-01~10-3](images/iOS%20강의-ch7%20%20Structure-01~10-3.png)

## 03. ## 구조체##  ## 도전과제## 

 1. 강의이름, 강사이름, 학생수를 가지는 Struct 만들기(Lecture)
 2. 강의 Array와 강사 이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기

 3. 강의 3개 만들고 강사이름으로 강의 찾기

![iOS 강의-ch7  Structure-01~10-4](images/iOS%20강의-ch7%20%20Structure-01~10-4.png)

![iOS 강의-ch7  Structure-01~10-5](images/iOS%20강의-ch7%20%20Structure-01~10-5.png)

같은 강사의 강의 갯수가 여러개일 수 있으므로,  배열을 넣었다. 

![iOS 강의-ch7  Structure-01~10-6](images/iOS%20강의-ch7%20%20Structure-01~10-6.png)

![iOS 강의-ch7  Structure-01~10-7](images/iOS%20강의-ch7%20%20Structure-01~10-7.png)

- 클로저를 이용한 방법

![iOS 강의-ch7  Structure-01~10-8](images/iOS%20강의-ch7%20%20Structure-01~10-8.png)

뒤에 ?? 는 nil coalescing 

$0 (첫번째 요소) 

## 04. ## 프로토콜##  Protocol

스위프트에서 Int, Double은 프로토콜을 가지고 있다. Int, Double 타입 등은 Struct로 구성되어 있다. 

public struct Int : FixedWidthInteger, SignedInteger { … }

여기서 FixedWidthInteger나 SignedInteger는 프로토콜이라고 하는 것. 

- 프로토콜이란? 

규약, 쉬운말로 하면 지켜야할 약속. 코딩할 때는 꼭 구현되어야하는 메소드나 프로퍼티 목록을 의미. 어떤 서비스를 이용할 때 해야할 일을 얘기. 준수해야 서비스를 이용할 수 있다고.

public protocol CustomStringConvertible {
	public var description: String { get }
}

이 프로토콜 서비스를 이용하려면 이 안에 있는 description 을 해야한다고 생각하면 된다.

해야할 일을 코드로 구현하는 것을 Conforming. 한국말로는 준수한다고. 

- 프로토콜을 어디에 쓰는지?

고급 프로그래밍을 하기 위해서는 많이 사용될 필요가 있다. 

- 실습 

struct에 protocol을 어떻게 붙여서 준수할 수 있을지 확인. struct 도전과제 코드를 이용. 

![iOS 강의-ch7  Structure-01~10-9](images/iOS%20강의-ch7%20%20Structure-01~10-9.png)

콜론을 붙여 사용한다. 
예)
struct Lecture: CustomStringConvertible 

conform하기 위해 protocol stubs를 붙여야 한다.

![iOS 강의-ch7  Structure-01~10-10](images/iOS%20강의-ch7%20%20Structure-01~10-10.png)

이 프로토콜을 사용하지 않은 상태의 경우 해당 struct를 출력하게 되면 아래와 같이 뜬다. 

**let** lec1 = Lecture(name: "일반생물학", instructor: "Dee", numberOfStudents: 12)

print(lec1)

![iOS 강의-ch7  Structure-01~10-11](images/iOS%20강의-ch7%20%20Structure-01~10-11.png)

이걸 설명형으로 쓸 때, 위 프로토콜을 사용해서 쓸 수 있다. 

만약 위 CustomStringConvertible 을 사용하여 출력하면 서비스를 이용하는 struct 등이 아래처럼 출력이 된다. 

![iOS 강의-ch7  Structure-01~10-12](images/iOS%20강의-ch7%20%20Structure-01~10-12.png)

struct 변수를 프린트 했을 때 위 description에서 리턴한 문자열의 형태대로 출력된다.

## 05-07. ## 프로퍼티##  ## 개념##  ## 및##  ## 실습##  

Structure는 관계있는 것을 묶어서 표현하는 것.
관계있는 것을 묶어서 표현한 것이 오브젝트 

Object = Data + Method

![iOS 강의-ch7  Structure-01~10-13](images/iOS%20강의-ch7%20%20Structure-01~10-13.png)

변수들은 데이터 파트, 아래 isDeliverable은 메소드 파트 

- Properties : 데이터 파트를 스위프트에서는 프로퍼티라고 한다. 

프로퍼티도 크게 두가지로 나뉜다. 

* Stored Property : 여태 봐왔던, 값을 저장해서 변수로 들고 있는 것. 
* Computed Property : 프로토콜 실습에서 채워넣었던 description은 컴퓨티드 프로퍼티. 값을 저장하는 게 아니라 저장된 정보를 이용하여 가공, 혹은 계산된 값을 제공할 때 사용됨. 이 프로퍼티는 매번 접근할 때마다 다시 계산이 되서, 저장된 값이 변경될 경우 새로운 저장된 값을 이용해서 컴퓨티드 프로퍼티를 다시 만들어서 제공한다. 

![iOS 강의-ch7  Structure-01~10-14](images/iOS%20강의-ch7%20%20Structure-01~10-14.png)

- 프로퍼티 실습

- Stored Property

![iOS 강의-ch7  Structure-01~10-15](images/iOS%20강의-ch7%20%20Structure-01~10-15.png)

var일 경우 접근해서 프로퍼티를 수정할 수 있음. let 일 때는 처음에 구조체를 생성할 때 한 번만 됨. 실무에서는 상수사용을 권장. 

![iOS 강의-ch7  Structure-01~10-16](images/iOS%20강의-ch7%20%20Structure-01~10-16.png)

* Computed Property

![iOS 강의-ch7  Structure-01~10-17](images/iOS%20강의-ch7%20%20Structure-01~10-17.png)

![iOS 강의-ch7  Structure-01~10-18](images/iOS%20강의-ch7%20%20Structure-01~10-18.png)

결과

![iOS 강의-ch7  Structure-01~10-19](images/iOS%20강의-ch7%20%20Structure-01~10-19.png)

컴퓨티드 프로퍼티는 읽기 전용, 값을 새로 세팅할 수가 없다. 그렇기 때문에 fullName에 값을 할당하거나 업데이트,삭제 할 수 없는데, 어떻게 보면 이용된 stored property의 관계를 잘 정리해두면 세팅도 가능하게 할 수 있다. 

세팅을 가능하게 하려면 GETTER, SETTER 를 넣어줘야 한다. 

기본적으로 Computed Property는 Read Only(getter)지만, fullName을 받아서 쪼개서 stored property에 저장하는 식으로 setter를 설정할 수 있다. 이런 식으로 컴퓨티드 프로퍼티의 값을 세팅할 수 있도록 할 수 있다. 

* Computed Property의 Getter, Setter 

![iOS 강의-ch7  Structure-01~10-20](images/iOS%20강의-ch7%20%20Structure-01~10-20.png)

setter를 통해 값이 업데이트 된 것을 확인할 수 있다.
![iOS 강의-ch7  Structure-01~10-21](images/iOS%20강의-ch7%20%20Structure-01~10-21.png)

이런 property는 person이라는 struct의 인스턴스 객체를 생성해야 만들 수 있다.

이러한 인스턴스 프로퍼티 말고 타입 프로퍼티라고 인스턴스와 상관없이 만들 수 있는 것이 있다. 

타입 프로퍼티는 생성된 인스턴스와 상관없이 struct 타입  혹은 클래스 타입 등 타입 자체에 속성을 정하고 싶을 때 사용한다. 

* 타입 프로퍼티 Type Property

앞에 static을 붙여 선언한다. 

![iOS 강의-ch7  Structure-01~10-22](images/iOS%20강의-ch7%20%20Structure-01~10-22.png)

![iOS 강의-ch7  Structure-01~10-23](images/iOS%20강의-ch7%20%20Structure-01~10-23.png)

인스턴스가 아니라 타입 자체에 있는 프로퍼티이다. 

- Summary

오브젝트의 데이터에 해당하는 영역이 프로퍼티 

* Stored Property : 저장된 값 
* Computed Property : 저장된 값을 이용하여 계산. 
* Type Property : 타입에 속한 값. Static을 이용해 선언 

- 실습 : 프로퍼티들의 값이 바뀔 때 이걸 어떻게 관찰(Observation)하고 값이 바뀌는 걸 알아차릴 수 있는지 

예를 들어서 Stored Property는 값이 바뀌는 경우 값이 바뀌는 시점을 알아낼 수 있다. 

* didSet{}

Stored Property의 didSet {} 을 통해 알아낼 수 있다. 

didSet{}은 StoredProperty 에서만 가능하다. 

![iOS 강의-ch7  Structure-01~10-24](images/iOS%20강의-ch7%20%20Structure-01~10-24.png)

결과 

![iOS 강의-ch7  Structure-01~10-25](images/iOS%20강의-ch7%20%20Structure-01~10-25.png)

바뀔 때마다 OBSERVING 할 수 있다. 

OBSERVATION의 경우 값이 셋 되고 나서 OBSERVATION 할 수 있고 값 셋팅 직전에 알 수 있다. 

* willSet{}

이때는 willSet{}을 통해 알 수 있다. 할당되기 직전을 알 수 있다. 
willSet{} 다음이 didSet{}

![iOS 강의-ch7  Structure-01~10-26](images/iOS%20강의-ch7%20%20Structure-01~10-26.png)

![iOS 강의-ch7  Structure-01~10-27](images/iOS%20강의-ch7%20%20Structure-01~10-27.png)

willSet의 newValue가 didSet의 현재 값, 

didSet의 oldValue가 willSet에서의 현재 값 

-  Lazy Property 

인스턴스가 생성될 때 실행된다기보다 해당 프로퍼티가 접근될 때 코드가 실행되는 프로퍼티. 

Stored Property는 처음에 생성(initialise)할 때 각각의 프로퍼티에 접근을 해서 이미 코드가 실행됨. 

![iOS 강의-ch7  Structure-01~10-28](images/iOS%20강의-ch7%20%20Structure-01~10-28.png)

결과

![iOS 강의-ch7  Structure-01~10-29](images/iOS%20강의-ch7%20%20Structure-01~10-29.png)

프로퍼티가 모든 사용자에게 접근되지 않은 경우, 처음부터 쓸 필요가 없는, 그런 프로퍼티의 경우에는 코스트가 많이 듬. 때문에 효율화 차원에서 레이지 프로퍼티를 사용할 수 있다. 

## 08. ## 프로퍼티##  vs. ## 메소드##  Property vs. Method

헷갈리는 부분들은 Computed Property와 Method.  컴퓨티드 프로퍼티 자체는 이미 저장된 값을 가지고 재가공하거나 재계산할 때 사용. 

 var fullName: String {
	return "\(firstName) \(lastName)"
}

func fullName() -> String {
	return "\(firstName) \(lastName)"
}

위처럼 같은 기능을 수행할 때 메소드를 이용해도 되고 컴퓨티드 프로퍼티를 이용해도 될 것 같을 때. 
(결과도 동일할 때) 

-
여기서 차이점을 본다면

Property
: 호출 시 저장된 값을 하나 반환한다. 

Method
: 호출 시 어떤 작업을 한다. 

** 강사님이 추천해주는 기준 ** 
Setter가 필요하다 
	-> y ->  Computed Property
	-> n -> 2계산이 많이 필요하거나 DB access나 File IO가 필요하다면

	 	-> y -> Method
		-> n -> Computed Property

## 09. ## 메소드##  ## 개념##  ## 및##  ## 실습##  

Function과 마찬가지로 기능을 수행하는 코드 블럭. Method는 Function과 다르게 Struct나 Class 안에서만 동작. 

- Struct와 관련된 메소드 실습 

![iOS 강의-ch7  Structure-01~10-30](images/iOS%20강의-ch7%20%20Structure-01~10-30.png)

이 함수는 관련된 기능이므로 Lecture 구조체에 메서드로 넣어도 된다는 판단이 듬. 

 
![iOS 강의-ch7  Structure-01~10-31](images/iOS%20강의-ch7%20%20Structure-01~10-31.png)

- mutating

![iOS 강의-ch7  Structure-01~10-32](images/iOS%20강의-ch7%20%20Structure-01~10-32.png)

![iOS 강의-ch7  Structure-01~10-33](images/iOS%20강의-ch7%20%20Structure-01~10-33.png)

stored property를 변경할 경우 메소드에 mutating 키워드를 붙여서 선언해야한다. 

- Type Method 타입 메서드 

타입 프로퍼티만 있는 것이 아니라 타입 메서드도 있다. 선언할 때 타입프로퍼티처럼 static 키워드를 붙여줌. 

![iOS 강의-ch7  Structure-01~10-34](images/iOS%20강의-ch7%20%20Structure-01~10-34.png)

타입 프로퍼티와 마찬가지로 타입 메서드도 인스턴스 변수를 선언하지 않아도 사용할 수 있다. 

## 10. ## 메소드##  ## 확장## 

- extension : 나중에 struct에 메서드를 추가하고 싶다면 

extension을 이용해 확장할 수 있다. 

![iOS 강의-ch7  Structure-01~10-35](images/iOS%20강의-ch7%20%20Structure-01~10-35.png)

Math 선언부에 같이 넣어 만들면 깔끔하겠지만 모든 사람들이 Math를 추가할 때마다 찾아서 넣는 것도 그렇고 충돌이 될 수 있기 때문에, 안에 재정의를 하는 것이 정답이 아닐수도 있기 때문에, EXTENSION을 이용해 외부에서 새로운 메소드를 추가할 수 도 있다. 

예를 들어 Int (우리가 사용하는 정수 타입) 에 메소드를 추가할 수도 있다. 

![iOS 강의-ch7  Structure-01~10-36](images/iOS%20강의-ch7%20%20Structure-01~10-36.png)

내가 만든 struct가 아니라 애플에서 만든 struct임에도 extension을 이용하여 기능을 추가하고 메소드를 확장할 수 있다. 

이렇게 extension을 이용해 확장하는 것은 실제로 많이 사용한다. 

-끝-

