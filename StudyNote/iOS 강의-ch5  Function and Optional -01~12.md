# iOS 강의-ch5  Function and Optional -01~12

# iOS # 강의# -ch5  Function and Optional -01~12

## 01. ## 함수소개## 

### F### unction 

메소드와 기능을 수행한다는 점에서 비슷함. 
메소드는 오브젝트에 속해서 기능을 수행하는 반면 
Function은 독립적으로 호출이 가능 

* Method 

object.methodName()
* Function 

functionName()

### Optional  
스위프트에서 가장 중요한 개념 중 하나. 

## 02,03. ## 함수실습## 

### 함### 수선언###  
func functionName(parameterName: parameterType) {
	code block… 
}
인자가 없다면 () 소괄호 안을 비우면 된다. 

![iOS 강의-ch5  Function and Optional -01~12](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12.png)

기존의 MyAlbum 프로젝트에서도 함수를 사용. 
print()도 함수 

오브젝트에 속해서 기능을 수행하면 메소드. 

* 파라미터가 1개일 때 

![iOS 강의-ch5  Function and Optional -01~12-1](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-1.png)

* 파라미터가 2개일 때

![iOS 강의-ch5  Function and Optional -01~12-2](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-2.png)

* 파라미터 이름을 적지 않으려고 할 때 

![iOS 강의-ch5  Function and Optional -01~12-3](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-3.png)

함수 선언을 할 때 

func 함수명(밖에서 보이는 파라미터 이름 내부에서 쓰이는 이름 : 타입){}
으로 하여 _ 언더스코어를 사용할 수 있다. 

* 파라미터를 외부 호출과 함수 내부 사용 이름을 다르게 할 때 (external name and internal name) 

![iOS 강의-ch5  Function and Optional -01~12-4](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-4.png)

** 예전에 강사님이 네이버 뮤직에 있을 때 스위프트가 한글이 지원이 되서 한글로 코딩한 적이 있었다고.  

![iOS 강의-ch5  Function and Optional -01~12-5](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-5.png)

* 함수 인자의 디폴트값을 설정 

함수 선언시 파라미터에 디폴트값을 대입해준 채로 선언하면 된다. 
func 함수이름(변수이름1: 타입 = 디폴트값, 변수이름2:타입)

![iOS 강의-ch5  Function and Optional -01~12-6](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-6.png)

디폴트값이 설정되어 있는 경우, 디폴트값이 없는 나머지 파라미터만 넣어서 함수를 호출할 수 있다. 

* 함수의 반환 값 (set return type of function)

반환값이 있을 경우 아래처럼 표시한다 

func 함수이름(파라미터:타입) -> 반환할타입 {

}
![iOS 강의-ch5  Function and Optional -01~12-7](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-7.png)

*** 함수는 인풋이 있을수도 (없을수도) 있고, 아웃풋이 있을수도 (없을수도) 있다. 

func 키워드를 이용하여 함수 작성 
소괄호 안은 인풋 파라미터의 이름과 타입을 지정

화살표 표시를 통해서 함수의 아웃풋이 있는 것을 표시 
반환은 함수 내부에서 return 키워드를 통해 반환 

## 04. ## 함수요약## 

함수는 어떤 기능을 수행하는 코드블럭이다. 
![iOS 강의-ch5  Function and Optional -01~12-8](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-8.png)

기능을 수행하기 위해 인풋을 받을 수도 있고 아웃풋을 내보낼 수도 있다. 

자판기(Vending machine)의 작동원리와도 유사. 

## 05. ## 도전과제## 

1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기

2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname을 출력하는 함수 만들기

3. 성, 이름을 받아서 fullname return 하는 함수 만들기 

![iOS 강의-ch5  Function and Optional -01~12-9](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-9.png)

**** 함수명을 동일하게 하면 오버로딩 (..?)

## 06,07. ## 고급기능## 

고급개념과 고급기능을 다뤄볼 것. 

함수의 기본 syntax에 대해 리뷰 

func functionName(externalName parameterName : ParamType = defaultValue) -> ReturnType {
	// code block… 
	return returnValue
}

* 오버로드 (Overroad)

같은 함수의 이름을 같지만 파라미터나 리턴이 달라지는 경우에 오버로드가 사용됨. 

![iOS 강의-ch5  Function and Optional -01~12-10](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-10.png)

* In-out Parameter

![iOS 강의-ch5  Function and Optional -01~12-11](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-11.png)

파라미터는 들어오자마자 값이 복사가 되어 들어온다. 복사가 되는데, 파라미터 자체는 CONSTANT 상수. 상수는 값이 바뀔 수 없기 때문에 에러. 

파라미터로 들어온 변수를 변경하기 위해서는 IN-OUT 키워드를 이용해서 copy in, copy out 해야한다. 파라미터로 들어오는 변수를 함수에서 직접 변경하고 싶을 때는 카피인, 카피아웃 

사용하기 위해서는 함수의 파라미터 타입앞에 inout 키워드를 붙이면 된다. 

![iOS 강의-ch5  Function and Optional -01~12-12](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-12.png)

* 함수의 인자로 함수를 넘기기

스위프와 같은 현대 프로그래밍 언어에서는 함수자체를 파라미터로 넘길 수 있다. 

-> 함수를 변수에 할당할 수 있음 
![iOS 강의-ch5  Function and Optional -01~12-13](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-13.png)

-> 함수를 파라미터로 넣을 때는 함수의 형태를 넣기

파라미터로들어가는함수이름 : (해당함수의 파라미터타입) -> 리턴타입

![iOS 강의-ch5  Function and Optional -01~12-14](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-14.png)

*** 여기서 중요한 것은 
함수의 타입이 같아야 된다. 
파라미터를 넘길 때 같은 타입의 함수를 넘겨야 한다. 

*** 실무에서 가장 근본적으로 생각하는 것은 "함수는 될 수 있으면 한 가지의 일을 구성하는 것이 좋겠다"라는 점. 단순하게 순수함수를 구성해보는 것이 고심하고, 고민이 실력으로 쌓이다보면 더 좋은 코드를 짤 수 있다고 예상이 됨. 그렇게 하려면 함수가 정말 단순하게 짜여야 함. 함수를 짤 때 10줄 이상 넘기지 않게 짜는 것을 권함. (순수함수로 두기 위한 제약) 50줄, 100줄이 되면 작은 함수로 쪼개는 훈련을 해야함. 

## 0## 8, 09. ## 옵셔널##  ## 기초## , ## 실습## 

**Optional** 
옵셔널은 스위프트를 처음 배우는 사람들이 가장 많이 혼란스러워하는 개념 중 하나. 코드 중간에 물음표(?)와 느낌표(!). 옵셔널이라는 개념이 어떤 상황에서 유용한지 알아보면 개념에 대한 이해가 가능 

var name: String = "Janine"
var catName: String = "San"
var carName: String = ??? 

없는 것에 대해 표현할 때 애매한 경우가 생김. 없을 수도 있는 값을 확인하여 boolean 값으로 플래그를 표시하는 등, 깔끔한 코드를 만들지 못하게 하는 요소.  

스위트에서는 옵셔널이라는 개념을 제공함으로써 값을 가지고 있지 않은 경우 또는 있는 경우를 둘 다 한꺼번에 표현할 수 있음. 

### nil
존재하지 않는 값을 표현할 때 nil을 사용. 
(nil = zero, nonexistent) 

옵셔널을 박스에 빗대어 생각하면, 물건이 없는 경우는 옵셔널에 밸류가 없는 상황. nil로 표현함. 

* **Optional ****형태로**** ****타입**** ****선언**** **

var value : Type?

타입 뒤에 물음표를 붙임으로써 값이 있을수도 없고 없을 수도 있다는 것을 표현함. 

![iOS 강의-ch5  Function and Optional -01~12-15](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-15.png)

- 명시적으로 값이 없음을 표현할 수 있음. 

![iOS 강의-ch5  Function and Optional -01~12-16](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-16.png)

- 간단한 과제 

![iOS 강의-ch5  Function and Optional -01~12-17](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-17.png)

![iOS 강의-ch5  Function and Optional -01~12-18](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-18.png)

타입 캐스팅을 하였으나 정수로 바꿀 수 없는 문자열 형태일 경우, nil을 가지고 있는 정수형 옵셔널(Int?) 형태가 된다. 

## 1## 0, 11. ## 옵셔널##  ## 고급## 

고급기능 4가지

* Forced Unwrapping
* Optional Binding (if let)
* Optional Binding (guard)
* Nil Coalescing 

**1****)Forced Unwrapping**
![iOS 강의-ch5  Function and Optional -01~12-19](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-19.png)

! 느낌표를 붙여서 Optional을 언래핑하면 Optional(value)가 아닌 value만 출력된다. 

![iOS 강의-ch5  Function and Optional -01~12-20](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-20.png)

값에 nil이 들어있는데 느낌표를 붙여서 언래핑하게 되면 시스템에서 컴파일 에러를 띄운다. 

**2)Optional Binding (if let)**
![iOS 강의-ch5  Function and Optional -01~12-21](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-21.png)

![iOS 강의-ch5  Function and Optional -01~12-22](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-22.png)

- 함수로 만들기

![iOS 강의-ch5  Function and Optional -01~12-23](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-23.png)

*** 함수의 깊이, 레벨(depth)이 깊어지면 복잡해짐. 복잡도(성)가 높으면 복잡도를 낮춰야한다고 실무에서 얘기가 나옴. 

코드의 복잡성을 정량적으로 측정하는 지표 중 하나가 **Cyclomatic Complexity **
**참고**** : **https://blog.seulgi.kim/2015/01/cyclomatic-complexity.html

 

**3)Optional Binding(guard) **

위처럼 하게 되면 Cyclomatic Complexity를 높일 수 있다.
: guard는 함수가 진행이 될 때 경계선을  하나 치는 것으로, 여길 통과하면 아래 코드를 수행하고, 통과가 안되면 함수를 나간다고. 
복잡성, 레벨 뎁스를 줄일 수 있는 방법 중에 하나. 
![iOS 강의-ch5  Function and Optional -01~12-24](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-24.png)

optional이 Unwrapped 될 수 있는 값이 있는지 확인. 

위 두가지 방법(if let, guard)은 Optional을 부드럽게 언래핑하는 방법 

**4****)Nil Coalescing**
박스(옵셔널)를 깠는데 값이 없을(=nil)일 경우 디폴트 값을 주는 것. 

let 변수명: 변수타입 = 변수(옵셔널) ?? "디폴트값"

값이 있을 경우 
![iOS 강의-ch5  Function and Optional -01~12-25](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-25.png)

값이 없을 경우 
![iOS 강의-ch5  Function and Optional -01~12-26](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-26.png)

?? 뒤에 값이 들어간다.

## 1## 2. ## 옵셔널##  ## 도전과제##  

 1. 최애 음식이름을 담는 변수를 작성 (String?)
 2. 옵셔널 바인딩을 이용하여 값을 확인해보기

 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 : 입력 파라미터는 String?

![iOS 강의-ch5  Function and Optional -01~12-27](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-27.png)

1. 함수로 guard let 이용

![iOS 강의-ch5  Function and Optional -01~12-28](images/iOS%20강의-ch5%20%20Function%20and%20Optional%20-01~12-28.png)

** Summary
Optional은 박스에 값이 있는지 없는지(=nil)를 표현할 수 있는 스위프트의 개념. 좀 더 명백하케 코딩할 수 있도록 해준다. 현대 프로그래밍 언어ㅔ서 차용하는 개념이라고 생각됨. 

-끝-

