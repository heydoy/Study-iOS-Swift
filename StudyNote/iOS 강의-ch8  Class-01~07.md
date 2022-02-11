# iOS 강의-ch8  Class-01~07

# iOS # 강의# -ch8  Class-01~07

## 01. ## 클래스##  ## 개념## 

struct와 유사한 CLASS 
관계가 있는 것을 묶은 것은 

object = data + method

object : struct and class 
data : property
method : method 

- Struct vs. Class

실제 동작에서 차이가 난다. 
( Struct 강의에서 같은 소제목 내용 참고 )

|  Structure<br/> | Class<br/> |
|-----|-----|
|  Value Types<br/> | Reference Types<br/> |
|  Copy<br/> | Share<br/> |

![iOS 강의-ch8  Class-01~07](images/iOS%20강의-ch8%20%20Class-01~07.png)

![iOS 강의-ch8  Class-01~07-1](images/iOS%20강의-ch8%20%20Class-01~07-1.png)

![iOS 강의-ch8  Class-01~07-2](images/iOS%20강의-ch8%20%20Class-01~07-2.png)

- 왜 동작의 차이가 있을까? 

두 타입이 생성되는 인스턴스가 컴퓨터 안에 할당된 메모리의 차이가 있어서. 

* Structure 는 Stack
* Class 는 Heap 

둘다 프로그램 실행을 위한 메모리 공간. 

* Stack 

시스템에서 당장 실행해야하거나 타이트하게 컨트롤 및 매니징 해야하는 경우 스택을 이용해 처리한다. (함수가 변수를 만들고, 일을 끝내서 제거하는 등) 효율적이고 빠르다. 

* Heap

힙은 시스템에서 클래스같은 레퍼런스타입을 저장하는 데 사용한다. 상당히 큰 메모리 풀을 가지고 있어서 동적으로 메모리할당을 요청할 수 있다. 힙은 스택처럼 자동으로 데이터를 제거하지 않기 때문에 개발자가 좀더 신경을 써줘야 한다. 

xcode에서 개발자가 신경 안 쓸 수 있도록 도와주고 있다. 이런 부분이 클래스를 좀 더 이용하는데 있어서 좀 더 복잡하게 만든다. 복잡한 구조 때문에 인스턴스를 힙 메모리에서 할당 및 제거하는 데 복잡하고 구조적으로 효율적이지 않다보니 스택보다 느리다. 

![iOS 강의-ch8  Class-01~07-3](images/iOS%20강의-ch8%20%20Class-01~07-3.png)

클래스 인스턴스는 힙 공간에서 생성되고, 변수에 할당할 때 변수 자체는 스택 공간에 생성이 된다. 생성된 변수가 해당하는 인스턴스의 주소를 가지고 있는 것. 

- Summary

![iOS 강의-ch8  Class-01~07-4](images/iOS%20강의-ch8%20%20Class-01~07-4.png)

## 02. ## 클래스##  ## 실습## 

Struct와 같은 폼으로  Class를  아래와 같은 경고 메시지가 뜬다. 
![iOS 강의-ch8  Class-01~07-5](images/iOS%20강의-ch8%20%20Class-01~07-5.png)

1)클래스에서는 생성자를 선언해주어야 한다는 점 
2)mutating이 클래스에서 유효한 인스턴스 메소드가 아니라는 점 

![iOS 강의-ch8  Class-01~07-6](images/iOS%20강의-ch8%20%20Class-01~07-6.png)

Swift의 생성자는 자바처럼, 클래스 이름과 동일한 이름이 아니고 init 키워드를 사용한다. 

클래스가 생성이 되었을 때 프로퍼티에 대한 값이 채워지게 되는데, 생성자를 만들어 값을 초기화시켜준다. 

struct도 Init 키워드를 이용해 생성자를 만들 수 있다. 

![iOS 강의-ch8  Class-01~07-7](images/iOS%20강의-ch8%20%20Class-01~07-7.png)

 struct와 Class의 타입이 다르기 때문에, 프로퍼티를 변경할 경우 결과값이 달라진다. 

![iOS 강의-ch8  Class-01~07-8](images/iOS%20강의-ch8%20%20Class-01~07-8.png)

새로운 인스턴스를 만들어 가리키게 할 경우의 값 
![iOS 강의-ch8  Class-01~07-9](images/iOS%20강의-ch8%20%20Class-01~07-9.png)

가리키는 인스턴스를 바꿀 수 있다. 

![iOS 강의-ch8  Class-01~07-10](images/iOS%20강의-ch8%20%20Class-01~07-10.png)

## 03. ## 언제##  ## 클래스를##  ## 쓰고##  ## 스트럭트를##  ## 쓰는지##  

* Struct를 사용해야 할 때 

1) 두 오브젝트object 를 "같다 ,다르다"로 비교해야 하는 경우 : 둘이 가지고 있는 데이터가 같으면 같다고 해야하는지에 대해 

![iOS 강의-ch8  Class-01~07-11](images/iOS%20강의-ch8%20%20Class-01~07-11.png)

이 둘은 서로 다른 인스턴스지만, 들고 있는 데이터의 값이 동일하다. 

2)copy된 각 객체들이 독립적인 상태를 가져야 하는 경우  

![iOS 강의-ch8  Class-01~07-12](images/iOS%20강의-ch8%20%20Class-01~07-12.png)

복사했을 때 다른 소유자를 지정하는 것처럼 각 개체가 다른 상태로 관리되어야 하는 경우 Struct를 쓰는 게 낫다. 

1. 코드에서 오브젝트의 데이터를 여러 스레드 걸쳐 사용할 경우 

Value Type의 경우 해당 인스턴스가 copy된 유니크 인스턴스. 여러 스레드에 걸쳐 사용될 때 좀 더 안전하게 사용할 수 있다. 왜냐면 각 스레드가 유니크한 인스턴스를 가지고 있어서.

예를 들어, 한 객체에 여러스레드가 동시에 접근할 때는  잠재적인 위험이 있다. 밸류 타입을 쓰면 그 위험을 피할 수 있다. 

* Class를 사용해야 할 때

* 두 Object의 인스턴스 자체가 같음을 확인해야 할 때

* 하나의 객체가 필요하고, 여러대상에 의해 접근되고 변경이 필요한 경우 

예를 들면 iOS 앱 개발을 할 때 UIApplication이라는 앱 객체가 있다. 앱이 구동되는 데  있어서 유일한 하나의 객체로 앱 내의 여러 오브젝트에 의해서 접근될 필요가 있다. 이런 경우는 레퍼런스 타입인 클래스로 만들어 제공해주어야 한다. 

*  단순하게 얘기하자면

* 웬만한 오브젝튼는 일단 Struct로 만들어쓰자 
* 나중에 Class로 바꿀 필요가 있는  경우에 Class로 바꾸자. 

상대적으로 Struct에서 Class로 바꾸는 것은 어렵지 않다. 

* 실제로 Swift라는 언어가 Struct를 많이 사용한다. 

![iOS 강의-ch8  Class-01~07-13](images/iOS%20강의-ch8%20%20Class-01~07-13.png)

Swift에서는 String, Array, Dictionary가 다 Struct이다. 

* 자료참고 

http://developer.apple.com/swift/blog/?id=10

![iOS 강의-ch8  Class-01~07-14](images/iOS%20강의-ch8%20%20Class-01~07-14.png)

* 개발공부 팁 

Stack overflow보다 **_공식문서를_****_ _****_먼저_****_ _****_확인_**하는 습관을 들여야 한다. 

## 04. ## 상속개념##  ## 코드로##  ## 바로##  ## 배우기##  

프로그래밍을 할 때는 중복된 내용을 최소화 해야함. 

![iOS 강의-ch8  Class-01~07-15](images/iOS%20강의-ch8%20%20Class-01~07-15.png)

 
Person 클래스와 Student 클래스는 Initialiser와 프로퍼티가 겹치는 내용이 많이 보인다. 이 상황에서는 상속이라는 개념을 이용해 중복되는 부분을 풀 수 있다. 

* 상속을 사용하는 방법

![iOS 강의-ch8  Class-01~07-16](images/iOS%20강의-ch8%20%20Class-01~07-16.png)

class 이름 옆에 :(colon)과 부모 클래스의 이름을 쓰면  된다. 

![iOS 강의-ch8  Class-01~07-17](images/iOS%20강의-ch8%20%20Class-01~07-17.png)

상속받을 경우 중복되는 프로퍼티와 이니셜라이저, 함수를 모두 지울 수 있다. 

(만약 오버라이딩 하려면 오버라이드 키워드를 입력해주어야 한다.) 

![iOS 강의-ch8  Class-01~07-18](images/iOS%20강의-ch8%20%20Class-01~07-18.png)

상속을 통해 긴 코드를 이렇게 줄일 수있고, STUDENT 클래스는 Person클래스의 프로퍼티와 메소드를 사용할 수 있다. 

![iOS 강의-ch8  Class-01~07-19](images/iOS%20강의-ch8%20%20Class-01~07-19.png)

둘다 Person이 가지고 있는 Initialiser를 사용할 수 있고, 프로퍼티와 메소드에 접근할 수 있다. 

![iOS 강의-ch8  Class-01~07-20](images/iOS%20강의-ch8%20%20Class-01~07-20.png)

반대로 super 클래스는 sub클래스의 프로퍼티에 접근할 수 없다. 

![iOS 강의-ch8  Class-01~07-21](images/iOS%20강의-ch8%20%20Class-01~07-21.png)

 

## 05. ## 상속의##  ## 규칙과##  ## 실습##   

![iOS 강의-ch8  Class-01~07-22](images/iOS%20강의-ch8%20%20Class-01~07-22.png)

 이게 논리적으로 명제가 맞을 때 상속을 시킬 수 있다.. 

학생이 사람이다가 참일 때 
학생은 사람을 상속받을 수 있음. 

* Super(Parent) - Sub(Child)

위 예제에서 

Person : Super  Class (Parent Class) 
Student: SubClass (Child Class)

* 상속의 규칙

- 자식은 한개의 Super Class만 상속받음 
- 부모는 여러 자식들을 가질 수 있다. 
- 상속의 깊이는 상관이 없음. (대대손손 가능) 

![iOS 강의-ch8  Class-01~07-23](images/iOS%20강의-ch8%20%20Class-01~07-23.png)

![iOS 강의-ch8  Class-01~07-24](images/iOS%20강의-ch8%20%20Class-01~07-24.png)

![iOS 강의-ch8  Class-01~07-25](images/iOS%20강의-ch8%20%20Class-01~07-25.png)

* Override

![iOS 강의-ch8  Class-01~07-26](images/iOS%20강의-ch8%20%20Class-01~07-26.png)

상속받은 메소드를 변경할 때 오버라이드 키워드를 사용한다. 

![iOS 강의-ch8  Class-01~07-27](images/iOS%20강의-ch8%20%20Class-01~07-27.png)

오버라이딩한 메소드가 다르게 동작하는 것을 볼 수 있다. 

* Upper Cast

![iOS 강의-ch8  Class-01~07-28](images/iOS%20강의-ch8%20%20Class-01~07-28.png)

athelete1에 athelete2를 재할당할 수 있다. athelete

* Down Cast

![iOS 강의-ch8  Class-01~07-29](images/iOS%20강의-ch8%20%20Class-01~07-29.png)

uppercast가 되서 FootBallplayer에 자세한 정보를 알 수 없다. 

다시 다운캐스트 

athelete1 as? (옵셔널하게) FootballPlayer
-> 혹시 FootballPlayer로 접근이 되는지 체크 

접근이 될 경우 footballTeam 프로퍼티를 접근하게 해보는 것 

자식은 대를 이어 부모님의 부모님까지 접근 
부모는 자식의 프로퍼티를 접근 불가 

자식상태로 넘어오면서 추가로 ㅈ ㅐ정의한 경우 재정의한 메소드로 진행이 됨. 

## 06. ## 상속을##  ## 언제##  ## 사용할까## ?

상속이 너무 잦아지면 상속의 깊이가 깊어지고 깊어질 수록 복잡해지기 때문에 유지보수가 어려운 측면도 있을 때가 많다. 

* Single Responsibility (단일 책임)

각 클래스는 한 개의 고려사항만 있으면 된다. 너무 많은 일들을 책임지려 하다보면 클래스의 정체성이 모호해지고 유지하기도 어려워진다. 클래스를 작성할 때 단일책임에 대해 고민해봐야한다. 

* Type Safety (타입이 분명해야할 때)

클래스간의 명확한 구분을 지어줘야할 때 상속을 고민해봐야. 부모 혹은 다른 자식 클래스간의 구분을 명확하게 해야할 때 

e.g. 스포츠팀을 만드려고 할 때, 운동부가 아닌 다른 학생들을 지원받고 싶지 않으니까 다른 클래스로 상속을 고려해볼 수 있다. 

* Shared Base Classes(다자녀가 있다.) 

공통적인 기능이 있고, 내용 자체는 다르게 구현되어야 할 때. 기본 동작에 대해 다양하게 구현하는가 등 

* Extensibility (확장성이 필요한 경우) 

외부앱에서 사용되어야 하는지. 

* Identity (정체를 파악하기 위해)

어떤 클래스인지 판단하기 위해 상속을 통해 검증할 수 있다. 객체 자체의 정체성을 구분하고 싶을 때 

- 이런 고려사항들을 개발할 때 자꾸 생각해보는 게 본인의 개발철학을 견고하게 할 수 있고, 내 코드의 근거가 생기는 것. 인터뷰할 때 코딩에 대한 근거가 중요하다. (e.g. 왜 이렇게 코드를 짰어요?)

 

## 07. Initialiser ## 생성자##  ## 이해하기##  (#1, #2, #3)

![iOS 강의-ch8  Class-01~07-30](images/iOS%20강의-ch8%20%20Class-01~07-30.png)

 상속을 받은 클래스를 생성할 때 기본 생성자형태로 클래스를 만들었는데, 자세히 보면 부모클래스와 자식클래스의 생성자의 형태가 같은 것을 확인할 수 있다.

![iOS 강의-ch8  Class-01~07-31](images/iOS%20강의-ch8%20%20Class-01~07-31.png)

반면, 상속된 자식클래스는 부모 클래스와 다른 형태로 생성자를 만들 수 있다. 

예를 들면 이렇게도 만들 수 있다. 
![iOS 강의-ch8  Class-01~07-32](images/iOS%20강의-ch8%20%20Class-01~07-32.png)

- 실습 

![iOS 강의-ch8  Class-01~07-33](images/iOS%20강의-ch8%20%20Class-01~07-33.png)

클래스에서 이런 STORED PROPERTY를 새로 생성하면 생성하는 시점에 INITIALISE된 값을 주어야 한다. 선언만 하면 INITIALISER가 없다는 경고메시지가 뜬다. 

![iOS 강의-ch8  Class-01~07-34](images/iOS%20강의-ch8%20%20Class-01~07-34.png)

때문에 INITIALISER를 생성 
![iOS 강의-ch8  Class-01~07-35](images/iOS%20강의-ch8%20%20Class-01~07-35.png)

여기에 super.init을 이용하여 부모 클래스의 생성자에 해당하는 값을 넘긴다. 

여기서 중요한 건 자식클래스의 stored property를 먼저 세팅하고 부모 클래스에 있는 프로퍼티를 나중에 세팅했다. 

* 상속받은 클래스의 Initialisation

클래스에서 상속받은 클래스가 Initialise를 할 때 규칙이 있다. 자식클래스에서 Stored Property를 먼저 세팅하고 그 다음에 부모클래스의 프로퍼티를 세팅해야되는 규칙. 이 규칙을 이해하기 위해서는 Two-Phase Initialisation에 대해 알아야 한다. 

* Initialisation 

Swift에서 기본적으로 인스턴스를 생성 시점에 모든 Stored Property는 값을 세팅해주어야 한다. 

그게 상속된 자식클래스의 경우에도 생성시점에는 자신이 가지고 있는 프로퍼티 뿐 아니라 부모가 가지고 있는 프로퍼티도 값을 세팅해주어야 한다. 

![iOS 강의-ch8  Class-01~07-36](images/iOS%20강의-ch8%20%20Class-01~07-36.png)

* 2-Phase Initialisation 

서브 클래스의 프로퍼티를 먼저 세팅하고 그 다음에 슈퍼 클래스 프로퍼티를 세팅해주는데 스위프트에서는 이렇게 상속된 클래스의 생성 시점에 자식클래스의 프로퍼티를 먼저 세팅하고 그 다음에 부모 클래스의 프로퍼티를 세팅하는 것을 지침하는 것을 2-Phase Initialisation 이라고 한다. 

- Phase 1 : 모든 Stored Property는 모두 Initialise 되어야 한다. 

![iOS 강의-ch8  Class-01~07-37](images/iOS%20강의-ch8%20%20Class-01~07-37.png)

자식클래스의 프로퍼티부터 Initialise해야되는 것이 수행되는 구간 

phase 1이 끝나기 전에는 어떤 프로퍼티나 메소드를 사용할 수 없다.

- Phase 2 : Phase 1과 반대방향. Phase One에서 부모 클래스의 프로퍼티까지 다 세팅하고 나면 그제서야 프로퍼티와 메소드가 사용가능. 

![iOS 강의-ch8  Class-01~07-38](images/iOS%20강의-ch8%20%20Class-01~07-38.png)

- 2-phase initialisation이 중요한 것은, 만약 이런 규칙이 없다면 initialiser에서 프로퍼티가 세팅도 안된 상태에서 인스턴스 메소드로 호출하게 될 거고, 이렇게 되면 원하는 방식으로 작동하지 않게 되고 오류가 생기게 될 것. 그렇기 때문에 안정적인 프로그래밍을 작동시키기 위해서 강렬한 규칙이 생기는 것.

* 실습 

InitIaliser내 에서 phase one이 끝난 상태에서는 메소드에 접근이 가능하다. 
![iOS 강의-ch8  Class-01~07-39](images/iOS%20강의-ch8%20%20Class-01~07-39.png)

만약 Phase one이 끝나기 전에 메소드에 접근한다면 경고메시지가 뜸. 
![iOS 강의-ch8  Class-01~07-40](images/iOS%20강의-ch8%20%20Class-01~07-40.png)

* Convenience Initialiser

Initialiser가 너무 커지는 경우에, 이것을 간편하게 만들 수가 있다. 

또한 모든 파라미터가 Initialiser에 안 쓰이는 경우도 있을 것. 이럴 때 쉽고 간략하게 쓸 수 있는 convenience initialiser를 만들 수 있다. 

![iOS 강의-ch8  Class-01~07-41](images/iOS%20강의-ch8%20%20Class-01~07-41.png)

여기서 위에 init() 이 기본형 Initialiser

![iOS 강의-ch8  Class-01~07-42](images/iOS%20강의-ch8%20%20Class-01~07-42.png)

또는 
![iOS 강의-ch8  Class-01~07-43](images/iOS%20강의-ch8%20%20Class-01~07-43.png)

override init으로 기본형을 만들고 

convenience init에서 같은 Student 객체형으로 받아서, 해당 객체의 프로퍼티를 그대로 넘겨주는 식으로 만들 수 있다. 

Initialiser를 입맛에 맞게, 필요에 따라 변경하여 쓸 수 있다. 

* Designated Initialiser (주 Initialiser)

클래스 안에 주 이니셜라이저가 있고 그 다음에 Convenience Initialiser가 있다. 

* Designated Initialiservs. Convenience Initialiser

한국어로는 (직역하면)지정 이니셜라이저, 간편 이니셜라이저 

시스템에서는 이 두개의 이니셜라이저를 사용하는 데 있어 규칙이 있다. 

- DI는 자신의 부모의 DI를 호출해야한다. 
- CI는 같은 클래스의 이니셜라이저를 꼭 하나 호출해야한다. 
- CI는 궁극적으로는 DI를 호출해야한다. 

![iOS 강의-ch8  Class-01~07-44](images/iOS%20강의-ch8%20%20Class-01~07-44.png)

클래스 안에는 여러가지 initialiser를 만들 수 있다. 
주가 되지않은 부 initialiser는 다른 initialiser를 호출할 수 있지만 궁극적으로는 주 initialiser를 호출해야된다. 

-끝-

