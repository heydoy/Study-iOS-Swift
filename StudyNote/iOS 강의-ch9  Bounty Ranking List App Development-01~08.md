# iOS 강의-ch9  Bounty Ranking List App Development-01~08

# iOS # 강의# -ch9  Bounty Ranking List App Development-01~08
# 

## 01. iOS ## 개발자가##  ## 알면##  ## 좋을##  ## 애플##  ## 경제지식## 

애플매출과 iOS 개발자간의 관계는 굉장히 밀접. 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08.jpeg)

서비스만 집계했을 때 50조 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-1](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-1.png)

애플이 개발자들에게 지급한돈이 120조에 달한다고. (2019년 강의자료기준) 애플 공식홈페이지에서 밝힌 내용. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-2](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-2.png)

아이폰 사용자는 적은데 오히려 거래랑은 더 크다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-3](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-3.png)

밝은 전망을 통해 ios 개발공부에 동기부여를 가지자고. 

## 02. ## 테이블뷰##  ## 기초개념## 

* 앞으로 만들 현상금 랭킹앱 소개 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-4](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-4.png)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-5](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-5.png)

화면은 크게 두개로 구성. 

메인에서는 포스터이미지, 이름, 금액이 있는 현상금 리스트, 각 셀을 클릭하면 자세한 내용을 표시해주는 페이지를 모달로 띄워서 보여줌. 

** **여기서**** Modal****이란****?**

아래에서 위로 올라오는 스타일의 뷰 전환방식

* 리스트 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-6](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-6.png)

우리가 일상생활에서 접하는 많은 앱들이 아이템을 나열해서 리스트로 보여주고 있다. 

(앱스토어, 애플뮤직, 미디엄, 주식앱)

* UITableView

ios 앱개발 에서 아이템을 나열해서 표현할  때 사용하는 것이 UITableView

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-7](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-7.png)

컬럼을 오직 한개만 가지고 있다. 
데이터를 여러 행에 걸쳐서 보여주고 있다. 각 데이터들은 TableView Cell을 통해서 표현이 됨. TableView Cell은 다양한 스타일로 표현할 수 있다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-8](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-8.png)

시스템에서 제공해주는 스타일이 있는가하면 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-9](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-9.png)

개발자가 직접 커스터마이징해서 사용할 수 있다. 

* Recycle Cell

테이블뷰는 셀을 재활용해서 데이터를 보여준다. 
예를 들어 100개의 데이터를 보여준다고 했을 때 실제 화면상으로는 20개도 보여줄 수 있다. 실제로 보여주는 셀은 한정적이기 때문에 모든 데이터를 위해 테이블 뷰 셀을 만들진 않고 화면에 보여지는 만큼만 만들어 재사용한다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-10](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-10.png)

그래서 스크롤 될 때마다 만들어진 셀을 재사용해서 보여준다. 시스템에서 훨씬 효율적이기 때문. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-11](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-11.png)

-Xcode 실습 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-12](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-12.png)

새로운 Xcode 프로젝트 (App) 

* 프로젝트 구조 톺아보기

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-13](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-13.png)

- SceneDelegate.swift 

SwiftUI에서 사용하는 것. 지금공부하는 내용에서 다루지 않음. 

- ViewController.swift

Storyboard와 연결되어있음. 
[move to trash] 후 [File] > [new File(command+N)] 해서 BountyViewController (subclass of UIViewController)를 생성함 . 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-14](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-14.png)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-15](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-15.png)

생성 시 Cocoa Touch Class 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-16](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-16.png)

Class: BountyViewController
Subclass of : UIViewController

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-17](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-17.png)

그 다음, 방금만든 BountyViewController를 스토리보드에 세팅해준다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-18](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-18.png)

이제 오브젝트 라이브러리에서 테이블 뷰를 가져와 스토리보드에 넣는다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-19](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-19.png)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-20](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-20.png)

뷰를 가져온 후에는 바로 오토레이아웃을 해준따. 나중에 데이터를 불러왔을 때 레이아웃이 깨질 수도 있으므로. 

오토레이아웃을 원하는 것을 클릭후 CTRL 누르고 부모뷰와 연결한 다음에 , 

Leading Space to Safe Area
Top…

Trailing… 
Bottom…

을 클릭해준다. 해당 창이 떴을 때 Shift키를 누르면 꺼지지 않는다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-21](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-21.png)

세팅하고 나면 Auto Layout의 Contraints가 잡힌 것을 확인할 수 있다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-22](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-22.png)

* 테이블 뷰 셀 

테이블 뷰의 데이터는 셀로 표현된다. 마찬가지로 오브젝트 라이브러리에 있는 셀을 가져와 테이블 뷰 안에 넣는다. 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-23](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-23.png)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-24](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-24.png)

** 강의와 버전이 다른데, 강의의 경우 셀이 줄로 표시되어 보였지만, 현재버전에서는 빈 화면으로 보인다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-25](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-25.png)

## 03-04. ## 테이블뷰##  ## 프로토콜##  Protocol## 개념## , ## 실습## 

* 테이블 뷰를 왜 쓸까? 

여러 아이템을 리스트로 보여주고 싶을 때 사용 

* 테이블 뷰의 질문?

테이블뷰를 리스트로 표현하고자 할 때 뷰 컨트롤러에 추가하였는데, 실제로 쓰려고 하면 데이터를 보여주기 전에 어떤 질문들을 한다. 
- 테이블 뷰 셀의 개수📌

- 테이블 뷰를 어떻게 보여줄 지📌

- 테이블 뷰를 클릭할 경우 어떻게 반응할지 등등

그 외에도 테이블 뷰는 다양한 상황에서 어떻게 대응하고 보여줄지 물어보는 게 많다. 그리고 물어본 질문에 모두 답할 수는 없지만 필수로 위의 두개📌는 답해주어야 한다. (셀의 개수, 뷰 어떻게 보여줄지) 즉 해야할 일들이 있는것. 

서비스를 이용하기  위해서 해야할 일들의 목록 -> 프로토콜 Protocol , 앞으로 앱개발을 하면서 수많은 프로토콜을 마주치게 될 것. 이번에는 테이블뷰를 위한 프로토콜과 맞닥뜨린 것.

* 테이블 뷰 서비스를 쓰기 위해 해야할 일 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-26](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-26.png)

- UITableViewDataSource

테이블 뷰의 셀이 몇개고, 
테이블 뷰를 어떻게 보여줄지 

- UITableViewDelegate

테이블 뷰를 클릭하면 어떻게 반응할지 

이 프로토콜에 제대로 대답하면, 그제서야 테이블 뷰를 쓸 수 있게 된다. 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-27](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-27.png)

* 테이블 뷰 프로토콜 실습 (Xcode)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-28](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-28.png)

해당 프로토콜을 추가하면 뜨는 경고창의 fix를 눌러 stubs를 추가 

- UITableViewDataSource
	* 테이블 뷰 셀의 갯수 

func tableView()의 리턴한 정수가 갯수

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-29](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-29.png)

	* 테이블을 어떻게 보여줄 것인지 
	* 재활용되는 것을 가져오는 것. 
		* tableView.dequeueReusableCell()

	* Reuse Identifier : 셀을 구분하는 구분자 
	* indexPath : 셀의 위치 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-30](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-30.png)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-31](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-31.png)

cell 선택 후 Attributes Inspector에서 Identifier에 입력한 이름을 입력해주면 됨. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-32](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-32.png)

	* 여기서는 cell을 리턴

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-33](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-33.png)

	* 테이블 뷰 셀의 악세서리를 체크마크로 추가 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-34](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-34.png)

추가하면 프로토타입에 체크마크가 추가되어 바뀐다. 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-35](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-35.png)

*** 악세서리 참고

	* Accessory : Disclosure Indicator

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-36](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-36.png)

	* Accessory : Detail Disclosure

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-37](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-37.png)

	* Accessory : Detail

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-38](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-38.png)

***

- 실제로 디바이스를 돌려도 코드에 세팅한대로 되지 않는다. 왜? 

스토리보드에 테이블 뷰를 만들어놨는데, 작성한 코드인 BountyViewController와 연결이 되지 않아있다. 즉 이 TableView의 Delegate가 이 View Controller라고 표시하지 않았다. 테이블 뷰가 누구에게 물어볼 것인지를 설정하지 않았다는 것. 

* 연결하기 위해서는 Table View를 클릭한 상태에서 CTRL키를 눌러서 BountyViewController에 드래그&드롭하면 Outlets 목록이 뜬다. 이때 [dataSource]와 [delegate] 를 클릭한다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-39](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-39.png)

이 때 Connect Inspector 를 보면 테이블 뷰가 dataSource를 통해 BountyView Controller에, 테이블 뷰의 갯수와 테이블 뷰를 어떻게 표현할 것인지를 세팅.

Delegate을 통해 연결된 Bounty View Controllr를 통해,  클릭되었을 때 어떤 액션을 취할 것인지 세팅.

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-40](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-40.png)

다시 빌드 앤 런을 하면, 셀 2개와 악세서리 : 체크마크가 표현되어 화면에 나타나있다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-41](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-41.png)

- UITableViewDelegate : 테이블 뷰가 어떻게 반응할지

	* func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {  //code }

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-42](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-42.png)

해당 코드의 출력 화면 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-43](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-43.png)

- Summary

테이블 뷰를 구현하기 위해서 프로토콜을 이용해 구현하는 것을 실습

## 05. ## 커스텀##  ## 테이블뷰##  ## 셀##  ## 만들기##  
애플에서는 다양한 스타일, 셀을 만드는데 필요한 것을 제공해주고 있지만 실제 앱을 만들 때는 제공해주는 셀로만 사용하게 되면 한계를 느낄 수 있다. 때문에 개발사들은 커스텀 셀을 만들어서 따로 데이터를 표현한다. 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-44](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-44.png)

우리가 자주 사용하는 앱들도 커스텀 셀을 만들어서 표현하고 있다. 

우리가 만들 현상금 랭킹앱도 커스텀 셀을 만들어 표현하는 것이 더 적합해 보인다. 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-45](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-45.png)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-46](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-46.png)

- 커스텀 셀을 만들기 (실습) 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-47](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-47.png)

이렇게 생긴 커스텀 셀을 만들어 볼 것. 

* BountyViewController에 ListCell 클래스를 만들고 UITableViewCell 프로토콜을 받음 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-48](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-48.png)

**class** ListCell: UITableViewCell {
    **@IBOutlet** **weak** **var** imgView: UIImageView!
    **@IBOutlet** **weak** **var** nameLabel: UILabel!
    **@IBOutlet** **weak** **var** bountyLabel: UILabel!
    
}

* 스토리보드에서 Cell 선택 후 Identity Inspector에서 Class 이름을 ListCell로 바꿔준다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-49](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-49.png)

* 액세서리는 일단 해지, cell의 높이는 200 (Table view에서 셀의 높이를 지정할 수 있다. automatic을 해제하고 Row height을 200으로 지정해준다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-50](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-50.png)

* 셀에 UIImageView와 UILabel을 오브젝트 라이브러리에서 찾아서 넣어준다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-51](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-51.png)

* 오토레이아웃  및 설정

	* UIImageView는 Aspect Ratio (선택 후 ctrl 누른 후 옆으로 살짝 끌어 드래그앤드롭), 비율은 7:10
	* ContentView에 Leading, Center Vertically in container (-20) 

	* Equal Height (-10)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-52](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-52.png)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-53](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-53.png)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-54](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-54.png)

	

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-55](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-55.png)

	* UILabel : Name 

size: 25, Bold, 중앙 정렬, textbox 사이즈 키우기 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-56](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-56.png)

ImageView와의 오토레이아웃 : Horizontal Spacing 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-57](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-57.png)

ContentView와의 오토레이아웃 : Trailing, Center vertically in Container 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-58](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-58.png)

	* UILabel : Bounty(현상금) 

size 30, bold, color: light gray(System Gray 2), 

Name Label이랑 오토레이아웃: Vertical Spacing(14), center horizontally

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-59](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-59.png)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-60](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-60.png)

* IBOutlet 변수를 UIComponent와 연결 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-61](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-61.png)

Cell을 눌러 Connection Inspector를 확인하면 잘 연결된 것을 확인할 수 있다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-62](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-62.png)

* BountyViewController로 넘어와서 데이터 세팅하기 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-63](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-63.png)

이름과 현상금 배열 상수를 선언해주었다. 총 여덟아이템이 있음. 

* 데이터를 이용해서 UITableViewDataSource, UITableViewDelegate 설정 

	* 배열의 요소 갯수만큼 테이블 ROW 갯수를 설정 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-64](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-64.png)

	*  폴더의 Assets(이미지 애셋 카탈로그)에 이미지를 가져와 넣는다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-65](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-65.png)

각각의 이미지이름은 이름 리스트의 이름과 동일 

	*   UITableViewCell이 아닌 사전에 커스텀한 ListCell로 바꾸기 

옵션을 눌러 셀을 보면 UITableViewCell
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-66](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-66.png)

때문에 캐스팅을 한다. 
옵셔널이기 때문에 guard 문을 이용,  캐스팅이 안될 경우 UITableViewCell로 반환 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-67](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-67.png)

이 guard문 경우 ListCell로 캐스팅을 해가지고 캐스팅한 결과 cell이 있는 경우 아래 return cell로 가고 아닌 경우 else문으로 빠진다. 

	* Cell 에 데이터 세팅하기 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-68](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-68.png)

**let** img = UIImage(named: "\(nameList[indexPath.row])")
        cell.imgView.image = img
        cell.nameLabel.text = nameList[indexPath.row]
        cell.bountyLabel.text = "\(bountyList[indexPath.row])"

	* 빌드앤런 결과물

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-69](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-69.png)

## 06. ## 뷰컨트롤러##  ## 모달로##  ## 띄우기##  
Present View Controller

새로운 뷰 컨트롤러를 어떻게 띄울지 다룰 것. 

셀을 클릭했을 때 디테일 뷰 컨트롤러가 모달로 뜨는 것을 다뤄볼 것. 

- Xcode > DetailViewController 생성  
	* [File] > [New] 에서 Cocoa touch class, class: DetailViewController  subclass of : UIViewController

- DetailViewController에 대응되는 화면을 Storyboard에 만들기 

	* Object Library에서 View Controller 선택하여 화면에 위치시키기 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-70](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-70.png)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-71](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-71.png)

- ViewController에 Identity Inspector 클릭하여 클래스를 DetailViewControler로 넣기 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-72](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-72.png)

- Close 버튼을 넣고 액션을 넣기 
	* Assistant 켜서 DetailViewController.swift 활성화 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-73](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-73.png)

	* Object Library에서 button을 찾아 넣기 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-74](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-74.png)

	* Attribute Inspector에서 Close 이미지 찾아 넣고 Title에 있는 글자 내용 제거 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-75](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-75.png)

	* 버튼에 오토레이아웃 넣기 

Self - width, height 50, 50

View- Top, Trailing  20, 16

❗️ 사이즈 조정 문제: 강사님이 알려준 방식으로는 되지 않았다. 버튼의 영역은 줄어들지만 이미지 사이즈가 줄어들지는 않음. 해결책을 못 찾아서 일단 넘기고 다음으로. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-76](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-76.png)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-77](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-77.png)

❗️임시로 clip to bound를 체크해, 설정한 영역에 이미지가 잘리도록 함 
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-78](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-78.png)

	* ctrl 누른 채로 코드에 끌어와서 action으로 연결. 

	* 버튼이 눌렸을 때 UIViewController가 사라지는 것은 dismiss 

dismiss(animated: true, completion: nil)
![iOS 강의-ch9  Bounty Ranking List App Development-01~08-79](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-79.png)

- 세그웨이 : 스토리보드에서 두 뷰 컨트롤러를 연결하는 방법 

 

	* 뷰컨트롤러 선택 후 ctrl 눌러서 연결하려는 컨트롤러에 끌어서 드롭하고  뜨는 창에서 [present modally] 클릭 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-80](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-80.png)

이 위에 노란 동그라미에 흰색 네모가 있는 버튼을 누른 상태에서 CTRL 버튼을 눌러야 한다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-81](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-81.png)

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-82](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-82.png)

두 컨트롤러 사이는 세그웨이로 여러가지가 연결될 수 있다. 

세그웨이 아이디를 설정하면 그중에 하나를 선택해서 특정세그웨이만 지정할 수 있다. 

	* 세그웨이 이름 설정 : showDetail

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-83](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-83.png)

	* BountyViewController에서 셀이 클릭이 됐을 때 불리는 func tableView(){} 에서 세그웨이를 수행하는 코드를 작성 

performSegue(withIdentifier: "showDetail", sender: nil) 

(sender는 특정 오브젝트를 껴서 전달해주는 것) 

	* 빌드 앤 런하면 테이블 셀을 클릭할 때 모달로 뜨고, close 버튼을 누르면 컨트롤러가 사라지는 것을 확인할 수 있다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-84](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-84.png)

- 선택했을 때 테이블 셀이 기본으로 회색으로 선택되는 데 이부분을 없애기 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-85](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-85.png)

	* Storyboard > View > Table View > Cell을 선택 후 Attribute Inspector를 키면 [Selection]에서 반응 어떻게 할지 조정하는 게 있다. Selection Style을 Default에서 None으로 바꿔준다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-86](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-86.png)

 

## 07. ## 뷰##  ## 컨트롤러##  ## 간##  ## 데이터전달##  

- 데이터넘기기 

세그웨이로 연결된 두 뷰 컨트롤러간 전환 시 데이터 넘기는 방법을 알아볼 것 

- DetailViewController의 화면을 구성하기 

이미지와 라벨 2개(이름과 바운티)

	* 이미지 : top 100, view:  center horizontally, leading, aspect ratio 7: 10, 

	* 이름 라벨 : 글자 30, image view : vertical spacing, center horizontally 

	

	* 바운티 라벨 : 글자색 회색, 이름라벨과 : vertical spacing, center horizontally 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-87](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-87.png)

- Assistant Editor 키고, 만든 UI컴포넌트를 아울렛으로 연결 

	* BountyViewController에 있는 이미지, 라벨과 같은 것이기 때문에 변수 선언한 블럭을 그대로 가져오고 연결

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-88](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-88.png)

- 기존 코드를 보면 이름과 현상금정보를 가지고 이미지를 알아낼 수 있다. 이름과 현상금 변수를 선언해줌. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-89](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-89.png)

	* 이름과 현상금 변수에 데이터가 들어오면 그걸 가지고 UI 컴포넌트를 해당하는 데이터를 업데이트 하는 함수를 추가하고, 이 함수를 viewDidLoad() 함수 안에서 호출해준다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-90](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-90.png)

	* 옵셔널이므로, 안에 내용이 있는 경우 세팅

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-91](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-91.png)

- 이제 데이터를 전달  

세그웨이를 수행하기 직전에, 세그웨이를 수행하는 것에 대해 준비하는 메소드가 있다. 

뷰 컨트롤러에 있는 함수인데 상속받았던 거라서 이 안에서 재정의. 여기서는 세그웨이를 준비할 때 데이터를 넘겨주는 용 

override func prepare(for segue: , sender ){
	// DetailViewController에게 데이터를 전달할 것.  때문에 데이터에 대한 내용을 tableView()를 통해 알 수 있음.

}

	* tableView() 에서 performSegue의 sender: indexPath.row로 바꿔줌 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-92](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-92.png)

	* prepare(for seeguee: ,sender:) 함수를 재정의 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-93](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-93.png)

- 완료

정보가 잘 넘겨져서 DetailViewController에 뜨는 것을 확인할 수 있다. 

![iOS 강의-ch9  Bounty Ranking List App Development-01~08-94](images/iOS%20강의-ch9%20%20Bounty%20Ranking%20List%20App%20Development-01~08-94.png)

- Summary 

데이터를 넘겨주는 과정. BountyViewController에서 테이블 셀을 클릭했을 때 ( tableView() ) 세그웨이를 수행( performSegue() )하라는 함수를 넣었다. 세그웨이를 수행하게 되면 Detail View를 띄우는데 이 때 sender 라는 파라미터에 정보를 넣어 보낼 수 있다. 이 정보를 통해서, 세그웨이를 수행하기 직전에, 준비하는 시점에, 그 정보를 가지고 몇번째 셀인지 확인해서, 해당하는 순서의 데이터를 가져와서 destination View controller : 결국에 띄울 DetailViewController에 있는 프로퍼티에 세팅을 해준다. 

세그웨이가 수행이 되면, DetailViewController의  viewDidLoad()가 수행되면서 메모리에 올라오고, 이때 세팅된 정보를 가지고 UI컴포넌트를 다 업데이트 시킨다. 

## 08. ## 코드##  ## 회고##  

- 왜 회고를 할까? 

스스로에 대한 배움을 찾아가는 과정이고, 그 과정에서 기술적으로 성장하는 것

- 실무에서는 동료들과 코드 리뷰 

-  작성한 코드에 대해 리뷰 

1)현상금 랭킹앱인데 랭킹이 없고, 정렬이 되어 있지 않음. 
2)이름을 정렬하려면 현상금도 같이 묶어서 정렬해야됨. 순서만 같을 뿐 서로 연결되어있지가 않음. 
3)만약 아이템이 많아지면, 안의 요소를 바꾸거나 새로 삽입하기가 어려울 것 같다. 

이렇게 고치기가 어렵고 재사용하기 어려운 것을, 기술부채라고 한다. 부채가 없을 순 없지만 최소화하기 위한 것이 엔지니어들의 목표. 코딩전략을 고민해봐야. 이런 전략들을 일반화시킨 형태로 만든 전략을 디자인패턴이라고 한다. 그 중 앱개발에서 널리 알려진 MVVM을 다음 챕터에서 알아볼 것. 

