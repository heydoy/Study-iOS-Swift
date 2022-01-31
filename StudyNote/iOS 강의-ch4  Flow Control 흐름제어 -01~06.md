# iOS 강의-ch4  Flow Control 흐름제어 -01~06

# iOS # 강의# -ch4  Flow Control # 흐름제어#  -01~06

## 01. Flow Control ## 흐름##  ## 제어##  ## 소개## 

코드가 계속 순차적으로 가는게 아니라 조건에 따라 분기가 나뉘거나, 반복적으로 코드를 돌리는 등 기본적으로 코드를 통해서 수행하는 동작의 흐름을 조절할 때 사용.  

* While loop
* For loop
* Switch Statement

다른 언어에 비해 강력한 기능이 Swift에 있다.

## 02. while
조건이 참일 동안 반복 
![iOS 강의-ch4  Flow Control 흐름제어 -01~06](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06.png)

### b### reak
break를 만나면 해당 스코프의 반복문을 벗어남

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-1](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-1.png)

 
### w### hile-repeat
do while 문 처럼 코드블럭 안의 내용을 먼저 한 번 실행 후 조건을 검사. 

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-2](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-2.png)

* while : 조건검사 후 코드 수행

* repeat-while : 코드수행 후 조건검사 

업무를 같이하는 사람들간의 consensus가 맞춰진 형식을 정해서 쓰면 됨. (어떤 상황에서 while, repeat-while을 쓸 지..)  

## 03, 04. for loop ## 기본## , ## 심화## 

flow control 에서 for loop와 while loop는 코드를 반복적으로 수행할 때 사용 

### Swift Range
![iOS 강의-ch4  Flow Control 흐름제어 -01~06-3](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-3.png)

* Closed Range

0부터 10까지를 짧게 표현함. 
0…10

* Half Closed Range 

둘다 upperBound는 10으로 동일하지만 실제 저장된 숫자는 다름. Half Closed는 9까지만 저장됨 

Range를 이용하여 For loop 
(String Interpolation도 활용) 

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-4](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-4.png)

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-5](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-5.png)

* 삼각함수를 그려볼 것 

import Foundation
![iOS 강의-ch4  Flow Control 흐름제어 -01~06-6](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-6.png)

CGFloat 은 float형태. 개발할 때 많이 볼 것 

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-7](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-7.png)

사인 그래프가 그려진다. 
오른쪽에 네모를 눌러 show result/hide result를 코드블럭 안에서 토글하여 보여주거나, 마우스 오버 시 생기는 눈 버튼을 눌러 모달로 결과를 볼 수 있다. 
![iOS 강의-ch4  Flow Control 흐름제어 -01~06-8](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-8.png)

* -

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-9](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-9.png)

변수가 쓰이지 않을 때 _(underscore)로 대체할 수 있다. 

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-10](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-10.png)

* closed range에서 짝수부분만 출력하기 

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-11](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-11.png)

이것보다 더 깔끔하게 표현하는 방법이 있음 

* where를 이용하여 조건을 추가 

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-12](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-12.png)

* continue를 이용하여 특정조건을 제외 

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-13](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-13.png)

* Nested For Loop (중첩 For Loop) 

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-14](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-14.png)

중첩이 너무 많아지면 수행성능이 안 좋고 가독성이 좋지 않음. 중첩을 많이 쓰지는 않음. 

## 05,06. switch ## 심화## 

Switch 구문 다른 언어보다 swift에서 더 강력한 기능이 있음.  

확인하려는 변수를 switch 옆에 두고, 블록 안에서 여러 가능한 케이스를 체크하고 해당 케이스에 부합하면 해당하는 코드를 수행.

부합하는 조건의 케이스만 실행하고 switch 블록을 벗어난다. 

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-15](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-15.png)

* default

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-16](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-16.png)

default case를 추가하지 않으면 에러가 뜸. 
나머지 케이스들을 처리할 수 있도록 함. 

* closed range

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-17](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-17.png)

* String 타입으로 해보기 

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-18](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-18.png)

case에 ,(comma)를 이용하여 case 조건을 중복으로 걸 수 있다.

* Switch 문 에서도 where문을 사용할 수 있다.

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-19](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-19.png)

case 에 Where를 추가한다. 

* Tuple을 활용하기 

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-20](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-20.png)

튜플에서 한가지 조건을 배제한다면  (조건, _) 
식으로 _ (Underscore)를 이용 

* Case 안에서 변수(상수)를 선언하여 확인이 가능 

![iOS 강의-ch4  Flow Control 흐름제어 -01~06-21](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-21.png)

where로 추가적인 조건을 거는 것이 가능 
![iOS 강의-ch4  Flow Control 흐름제어 -01~06-22](images/iOS%20강의-ch4%20%20Flow%20Control%20흐름제어%20-01~06-22.png)

switch 가 강력하기 때문에 여러상황에서 다양하게 사용할 수 있다. 

-끝-

