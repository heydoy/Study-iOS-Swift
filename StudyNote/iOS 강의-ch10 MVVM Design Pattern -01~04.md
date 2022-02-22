# iOS 강의-ch10 MVVM Design Pattern -01~04

# iOS # 강의# -ch10 # MVVM # Design Pattern -01~04
# 

## 01-02. ## 디자인패턴##  ## 개념##  

패턴들은 특정 일이나 목표를 달성하기 위한 효율적인 것들을 제공해주는 것. 

![iOS 강의-ch10 MVVM Design Pattern -01~04](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04.png)

* 디자인패턴의 목표

	- 기술부채 최소화

	- 재사용 및 지속가능 

-> 코드 구조에 대한 고민

클린 아키텍처에 대한 고민 
-> 세부적인 전략이

디자인 패턴 

* 앱개발에 가장 많이 사용되는 디자인 패턴  

: MVVM (Model- View - ViewModel)

![iOS 강의-ch10 MVVM Design Pattern -01~04-1](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-1.png)

* MVVM 이 나오기 전에 널리 쓰인 패턴 MVC

![iOS 강의-ch10 MVVM Design Pattern -01~04-2](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-2.png)

(Model - View - Controller)

애플이 예전에 MVC를 권장하면서 만든 문서도 있음. 지금은 관리하거나 업데이트 하지 않는 페이지 
https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/MVC.html

![iOS 강의-ch10 MVVM Design Pattern -01~04-3](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-3.png)

중계자인 UIViewController가 해야될 일이 많아지면서 결과적으로 기술부채가 발생되는 것이 관측됨. 

때문에  Massive View Controller 라고 부르기도. 

- MVVM

MVVM이 나오게 되면서, 현재는 널리 채택되어 사용되는 디자인 패턴 중 하나 

![iOS 강의-ch10 MVVM Design Pattern -01~04-4](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-4.png)

ViewModel은 ViewModel이라는 클래스를 따로 만들어 관리함. 

- MVC vs. MVVM

MVVM은 MVC와 달리, ViewController가 모델에 직접 접근하지 못한다. ViewController가 ViewModel이라는 새로운 클래스를 받게 됐다. 

MVC 패턴에서는 ViewController  자체가 Controller레이어에 있었는데 MVVM에서는 View 레이어에 있다. 

* MVVM에서 개선하려고 했던 점은, ViewController가 너무 많은 일을 하던 것을 축소시키는 것. 많은 일을 ViewModel로 위임했기 때문에 할일이 더 명확해진 것. 할 일이 명확해질 수록 수정이 더 용이하고 유지보수에 적은 비용이 들게 된다. 

- MVVM 실제 구현 

실제코드에서 어떻게 동작할지 그림으로 도식화 된 것. 
![iOS 강의-ch10 MVVM Design Pattern -01~04-5](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-5.png)

ViewController는 크게 두가지를 가지고 있다. 
* 하늘색 : View레이어에 속하는 부분 

VIEW와 ViewModel 

ViewModel은 중계자 역할. View와 ViewController와 소통함. 

![iOS 강의-ch10 MVVM Design Pattern -01~04-6](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-6.png)

ViewModel은 Model을 가지고 있다. 

Model은 View레이어와 직접 소통하지 않는다. ViewModel을 통해서 소통. 

- Summary

기술부채를 줄이고 재사용 가능하면서 유지보수 비용을 적게하면서 코드를 수정하는 과정을 리팩터링Refactoring 이라고 한다. 

사용자 입장에서는 변하는 게 없지만 내부의 코드가 바뀐다는 점. 

* 리팩토링 과정에서 중요한 원칙들 

1) 중복제거

2) 단일 책임 갖기 - 작게는 메소드 크는 오브젝트 단위에서 단일 책임을 갖게 코드를 수정해주어야 한다. 

저런 규칙들을 저절로 만들게 하는 규칙이 바로 **10-200 Rule. **

메소드는 10줄 이내, 클래스는 200줄 이내 
실무에서도 지키기 어려운 룰. _수강생들에게__ __제안하는__ __것이__ 30-400 Rule. _최대한 마음속에 두고 코드를 작성하는 것이 성장에 중요한 역할을 할 것. 

## 03-04. MVVM## 으로##  ## 리팩토링##  ## 하기##  

— 각 화면에서 MVVM 모델이 뭐가 되는지 찾고 패턴에 맞게 수정 하기 

- BountyViewController의 MVVM

![iOS 강의-ch10 MVVM Design Pattern -01~04-7](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-7.png)

     Model
     - BountyInfo
    
     View
     - ListCell
     > ListCell의 필요한 정보를 ViewModel 통해서 받는다.
     > ListCell은 ViewModel을 통해 받은 정보로 뷰 업데이트

    
     ViewModel
     - BountyViewModel
     > 뷰모델을 만들고 뷰 레이어에서 필요한 메서드 만들기

     > 모델을 가지고 있어야 한다. (BountyInfo 들)

디자인 패턴 적용할 때 각 컨트롤러에서 뭐가 필요한지 적어보고 하나씩 구현해보는 형태로 하고 있다. 

- DetailViewController의 MVVM 

![iOS 강의-ch10 MVVM Design Pattern -01~04-8](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-8.png)

     MVVM
    
     Model
     - BountyInfo
    
     View
     - imgView, nameLabel, bountyLabel
     > 뷰들은 뷰모델을 통해서 구성되기

    
     ViewModel
     - DetailViewModel
     > 뷰 레이어에서 필요한 메서드 만들기

     > 모델을 가지고 있어야 한다. (BountyInfo 들)

— Model 만들기 
- BountyViewController의 모델인 BountyInfo 만들기 

기존의 코드를 살려둔 상태에서 만들기 
코드가 원래 어떤 형태였는지 비교해보고 또 같은 형식으로 사용자에게 구현이 될지 보게 됨. 
![iOS 강의-ch10 MVVM Design Pattern -01~04-9](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-9.png)

![iOS 강의-ch10 MVVM Design Pattern -01~04-10](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-10.png)

기존 코드를 주석처리하고 빨간색 경고가 뜨는 줄을 수정하면 됨 

일단 모델을 만들어서 치환 시켜둠. 빌드 앤 런 해서 잘 작동하는지 체크. 

- DetailViewController의 모델인 BountyInfo 만들기 

![iOS 강의-ch10 MVVM Design Pattern -01~04-11](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-11.png)

이렇게 바꾸면 넘겨주는 쪽에서부터 문제가 생긴다. 

![iOS 강의-ch10 MVVM Design Pattern -01~04-12](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-12.png)

BountyViewController로 가서 수정하기

![iOS 강의-ch10 MVVM Design Pattern -01~04-13](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-13.png)

![iOS 강의-ch10 MVVM Design Pattern -01~04-14](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-14.png)

다시 DetailViewController에서 수정 

![iOS 강의-ch10 MVVM Design Pattern -01~04-15](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-15.png)

화면이 잘 작동하는지 확인. 앞서 말했듯이 리팩터링은 사용자에게 다른 가치를 준다기보다는 코드에서 좀 더 좋은  구조로 바꾸는 것이 목적이기 때문. 

— View와 ViewModel 만들기

- BountyViewController

ViewModel은 Model을 가지고 있어야 한다. 때문에 위에 선언해둔 let bountyInfoList 를 클래스 안으로 가져온다. 

![iOS 강의-ch10 MVVM Design Pattern -01~04-16](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-16.png)

모델에 직접 액세스하지 않고 뷰모델을 통해서 엑세스한다. 

![iOS 강의-ch10 MVVM Design Pattern -01~04-17](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-17.png)

코드 상, 모델에 직접 접근했던 부분들을 뷰모델에서 메서드로 만들어준다. 

1)해당하는 인덱스의 모델 데이터를 전달 (아래 2)와 같음)
![iOS 강의-ch10 MVVM Design Pattern -01~04-18](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-18.png)

![iOS 강의-ch10 MVVM Design Pattern -01~04-19](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-19.png)

2) 테이블 ROW갯수 구하는 코드 : 모델의 데이터갯수가 테이블의 ROW가 된다.

![iOS 강의-ch10 MVVM Design Pattern -01~04-20](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-20.png)

![iOS 강의-ch10 MVVM Design Pattern -01~04-21](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-21.png)

![iOS 강의-ch10 MVVM Design Pattern -01~04-22](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-22.png)

3) 셀에 데이터 셋팅 : 뷰모델에 인덱스를 넘겨주고 해당하는 데이터를 가져오는 메서드를 만든다. 
![iOS 강의-ch10 MVVM Design Pattern -01~04-23](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-23.png)

![iOS 강의-ch10 MVVM Design Pattern -01~04-24](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-24.png)

![iOS 강의-ch10 MVVM Design Pattern -01~04-25](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-25.png)

경고가 있는 줄은 모두 기존 모델에 직접 접근했던 코드들. 

** BountyViewModel 통 코드

![iOS 강의-ch10 MVVM Design Pattern -01~04-26](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-26.png)

- DetailViewController

![iOS 강의-ch10 MVVM Design Pattern -01~04-27](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-27.png)

![iOS 강의-ch10 MVVM Design Pattern -01~04-28](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-28.png)

![iOS 강의-ch10 MVVM Design Pattern -01~04-29](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-29.png)

 해당하는 뷰 모델의 모델을 업데이트 하는 메서드를 만들기 

![iOS 강의-ch10 MVVM Design Pattern -01~04-30](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-30.png)

![iOS 강의-ch10 MVVM Design Pattern -01~04-31](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-31.png)

— View에서는 할 게 없는지 체크 

- BountyViewController에서 cell에 있는 정보를 세팅해주고 있는 것을 Cell에 넣기 

![iOS 강의-ch10 MVVM Design Pattern -01~04-32](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-32.png)

![iOS 강의-ch10 MVVM Design Pattern -01~04-33](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-33.png)

- DetailViewController

여기서는 이미 ViewController안에 VIEW가 있고 updateUI()에서 세팅해주고 있기 때문에 따로 View로 정리할 것은 없어보임 

— 문제가 있는지 확인을 다 하고, 문제가 없다면 주석처리한 예전 코드를 삭제. 잘 지워놓는 게 중요 (깔끔하게) 

— Summary

리팩터링 결과를 보면서 많은 양의 코드를 줄이고 책임을 분산시킬 수 있는 것을 볼 수 있고. 책임을 분산시키는 것 자체가 각 오브젝트가 명확하게 할 일을 한 가지 정도만 하도록 만들려고 한 결과물. 

- 클래스들이 많아지면 이 파일 안에 다른 오브젝트가 있으니 헷갈릴 수도 있어서 STRUCT BountyInfo는 새로 만들 것 	

![iOS 강의-ch10 MVVM Design Pattern -01~04-34](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-34.png)

Cocoa Touch Class -> 
class : BountyInfo
subclass of: NSObject
Language: Swift
![iOS 강의-ch10 MVVM Design Pattern -01~04-35](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-35.png)

새로운 BountyInfo.swift에  BountyInfo struct를 붙여넣기 

![iOS 강의-ch10 MVVM Design Pattern -01~04-36](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-36.png)

이렇게 하면 좀 깔끔하고 편하게 오브젝트를 관리할 수 있다. 

뷰모델을 따로 빼도 되지만 코드가 길지 않으면 같이 있어도 무관. 파일이 너무 많아져도 …

- 랭킹앱을 위해서 Sorting을 하려면 리팩터링이 필요했다. 

![iOS 강의-ch10 MVVM Design Pattern -01~04-37](images/iOS%20강의-ch10%20MVVM%20Design%20Pattern%20-01~04-37.png)

이렇게 두가지만 바꿔도 sortedList, bountyInfo 
전체 화면의 뷰가 달라지는 것을 볼 수 있다. 

