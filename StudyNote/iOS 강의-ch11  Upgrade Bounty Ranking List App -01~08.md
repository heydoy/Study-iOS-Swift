# iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08

# iOS # 강의# -ch11  Upgrade Bounty Ranking List App -01~08
# 

## 01. CollectionView ## 개념##  

* Collection View

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08.png)

CollectionView란 여러개의 아이템을 보여주는 형식. 아이템을 하나의 작은 카드 안에 표현 한 것을 확인할 수 있다. 한 해 안에 여러개의 아이템이 있는 것을 볼 수 있다. 

* Table View

일전에 List를 표현했던 방식. 테이블 뷰는 표현에 한계가 있음. 열이 1개밖에 없어서 한 열 안에 여러 아이템을 넣고 싶을 때는 사용할 수 없다. 

- 실습에서 테이블뷰를 통해 만든 앱을 콜렉션뷰로 만들 예정 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-1](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-1.png)

* CollectionView에 대한 자세한 내용 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-2](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-2.png)

Column을 한개 이상 가지며, 
각 데이터의 나열을 수평방향으로 둘 것인지, 수직 방향으로 나열할 것인지 정할 수 있다. 

각 데이터들은  컬렉션 뷰 셀을 통해 표현됨. 다양한 스타일로 표현될 수 있다. 직접 개발자가 커스터마이징해서 쓸 수 있다. 대부분의 앱 개발사들은 커스터마이징해서 사용하고 있다. 

기본적으로 UITableView에 비해서 데이터의 나열이 자유롭기 때문에 많은 아이템을 보여주는 뷰에서 컬렉션 뷰를 고려하게 된다. 

* UICollectionViewLayout

컬렉션 뷰는 이렇게 자유로운 레이아웃 때문에 레이아웃에 대해서 전문적으로 관리하는 객체가 필요하다. 이를 관리해주는 객체가 UICollectionViewLayout이라는 객체. 

UICollectionViewLayout을 상속받아서 각자만의 레이아웃 객체를 만들 수 있다. 

* UICollectionViewFlowLayout

기본적으로 애플에서 제공하는 레이아웃객체가 있다. 

앞서서 보았던 GRID형태의 레이아웃은 UICollectionViewFlowLayout 객체로도 충분히 구현할 수 있다. 

컬렉션뷰의 구현은 앞서 UITableView에서 사용했던 Delegate 를 그대로 사용 

Delegate 프로토콜과 Datasource 를 이용해서 CollectionView를 사용하는데 필요한 코드를 작성해주면 된다. 

## 02-04. CollectionView ## 실습##  

* 프로젝트 Duplicate해서 rename

있는 코드를 없애고 싶지 않아서 복사 후 rename 했다. 아래 링크 참고 

https://help.apple.com/xcode/mac/11.4/#/dev3db3afe4f

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-3](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-3.png)

Enter and Wait이 중요 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-4](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-4.png)

Manage Schemes 클릭

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-5](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-5.png)

https://youtu.be/6P6ya2vdC8M

Build세팅도 변경 (위 유튜브 참고)
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-6](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-6.png)

빌드해서 잘 뜨는지 확인하면 끝 

—

* 실습 

테이블 뷰 제거 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-7](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-7.png)

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-8](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-8.png)

Object Library에서 CollectionView를 선택하여 드래그앤드롭 
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-9](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-9.png)

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-10](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-10.png)

오토레이아웃 하기 

Add new contraints (4개를 모두 0)

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-11](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-11.png)

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-12](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-12.png)

: 그전에는 CTRL 누르고 부모 뷰쪽으로 드래그하여 constraints를 세팅하였는데, 우측 하단에서 constraints를 추가했다.

—

Memo 
뷰와 셀을 제대로 선택했는데도 Right Pane(Inspector)에 Not Applicable이라고 뜸. 

https://stackoverflow.com/questions/30259861/xcode-right-pane-utilities-pane-not-applicable

여기 위 대로 따라했지만 

e.g. 
close all storyboard files
open any random swift file 
quit xcode
run  xcode again

이렇게 해서 수정되진 않았고, Simulator가 켜져있을 때는 뷰 안에  내용을 삭제하는게 적용이 안되었다. (아마도 XCODE 오류인 것 같다.)

Simulator를 종료하고 recent opened.. 리스트 말고 새로 프로젝트를 열어서 하니 제대로 작동함.

— 

컬렉션뷰 셀 설정 

Collection View 선택한 다음 Size Inspector를 눌러야 Cell Size를 선택할 수 있다. 

Cell Size 200*350
Estimate Size None

(이걸 Automate으로 설정하면 적용한 셀사이즈가 안 될 수 있다.)
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-13](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-13.png)

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-14](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-14.png)

Collection View Cell 선택 후 사이즈 동일하게 변경 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-15](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-15.png)

Cell 안에 Image와 Label을 넣는다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-16](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-16.png)

오토레이아웃

이미지뷰 : ctrl 누르고 Content View에 Top, Leading, Trailing

자기자신 CTRL 드래그, Aspect Ratio 7:10

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-17](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-17.png)

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-18](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-18.png)

Label 스타일 설정 

이름 -> Image와 Vertical Spacing(10), Content View의 Leading (20)

가격 -> 이름과 Vertical Spacing(6), Leading

-
뷰를 구현하는데 필요한 Delegate를 ViewController에 연결해야한다. 

CollectionView를 ctrl 눌러서 VIEW Controller에 가져다 두면 DataSource, Delegate 등이 있다. 이것들을 다 연결해준다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-19](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-19.png)

View Controller를 클릭하면 Right Pane의 Connection Inspector에서 연결된 것을 확인할 수 있다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-20](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-20.png)

현재 셀은 커스텀 셀이 아닌데 코드 쪽에서 셀을 만들어서 클래스로 연결해줄 예정. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-21](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-21.png)

BountyViewController에 들어가서 기존 테이블 뷰 프로토콜을 콜렉션뷰 프로토콜로 바꿔준다. 

(UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout)

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-22](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-22.png)

tableview 관련 코드는 일단 코멘팅

protocol stubs를 넣어준다. 

    ---> UICollectionViewDataSource
     몇 개를 보여줄 지

     셀을 어떻게  표현할 지

    
      ---> UICollectionViewDelegate
     셀이 클릭되었을 때 어떻게 처리하는지

    
      ---> UICollectionViewDelegateFlowLayout
     레이아웃과 관련된 것으로, 필수 구현요소는 아니지만 셀의 사이즈가 디바이스마다 변경될 필요성이 있음. 디바이스마다 폭이 다 다르기 때문에 가로폭에 따라 셀 사이즈를 균형적으롭 바꿔줘야함. 즉 Cell의 사이즈를 계산하여 여러 디바이스에서 일관적인 디자인을 보여줄 수 있게 한다. 

// UICollectionViewDataSource
셀의 갯수

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-23](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-23.png)

이전코드와  동일하게 뷰모델의 데이터(모델)갯수를 반환해준다. 

셀의 표현 
기존의 테이블뷰의 경우 셀을 재사용해서, 재사용되는 셀을 identifier를 통해서 셀을 구분해서 가져오고 dequeReusuableCell, 거기에 필요한 데이터를 넣어서 뷰를 업데이트하고 그 셀을 넘겨줬었다. 콜렉션뷰도 동일하다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-24](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-24.png)

이제 커스텀셀을 만들어야될 차례 

예전에는 이렇게 ListCell이라는 커스텀 셀을 만들었다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-25](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-25.png)

이 형식을 이용해서 UICollectionViewCell 프로토콜을 상속받는 GridCell이라는 커스텀  셀을 만들 것 
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-26](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-26.png)

다시 셀을 표현하는 collectionView 메서드로 돌아가서, return cell을 하기 전에 cell을 업데이트하고 업데이트 할 내용을 가져온다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-27](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-27.png)

이 때, 기존 테이블 뷰와 다르게 indexPath에서 row를 가져오는 것이 아니라 item을 가져와야한다. 

셀이 클릭되었을 때 실행된는 함수 collectionView에서도 동일하게 row가 아니라 item으로 바꿔준다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-28](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-28.png)

아까 선언한 GridCell을 스토리보드에 있는 셀과 연결한다. 

CollectionViewCell을 클릭후 Identity inspector에서 Class란에 GridCell을 입력해준다. (입력해주지 않으면 속해있는 하위 오브젝트(이미지뷰, 레이블 등)가 IBOutlet으로 코드와 연결되지 않는다.  

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-29](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-29.png)

또, Attributes Inspector 탭에서 Reuse할 때의 Identifier로 GridCell을 입력해준다. 
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-30](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-30.png)

이후 셀의 오브젝트를 각각 코드와 연결 
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-31](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-31.png)

빌드하여 미리보기 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-32](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-32.png)

두줄이 되어야 하는데  한 줄로 뜬다. 디바이스별로 제대로 계산이 안 되었기 때문에 이런 문제가  생겼다. 

우리가  설정한 값으로는 시뮬레이팅  된 디바이스에서 두 줄로 출력하기가 어렵기 때문에 한 줄로 출력이 된 것. 

UICollectionViewDelegateFlowLayout에서 이 부분을 해결할 수 있다. 

아이템간 가로 spacing이 10이고 줄간 간격이 10 이라고 했을 때, 디바이스의 가로사이즈에서 간격 10을 빼고 2로 나눈 값이  하나의 콜렉션뷰 셀의 Width가 된다. 

그 너비에 따라 이미지 뷰는 7:10의 비율로  사이즈가 책정되며, 이미지 뷰 아래의 이름과 바운티는 고정적으로  65의 크기를  부여할 예정이다.

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-33](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-33.png)

 sizeForItemAt 인자가 있는 collectionView 메서드를 선언한다. 

collectionView.bounds를 이용해 사이즈를 알  수 있다.

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-34](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-34.png)

height는 이미지 뷰 사이즈와 텍스트영역  고정크기를 더해주면 된다. 
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-35](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-35.png)

빌드하여 확인하면 처음에 의도하였던 대로 두줄로 출력되는 것을 확인할 수 있다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-36](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-36.png)

안 쓰는 코드들은 지워준다. 일관적인 코딩컨벤션을 가지고 작업하는 게 중요. 비즈니스 로직과 코딩 로직에 집중할 수 있는 환경이 된다. 

중간에 Luffy의 크기가 좀 다른데 이때는 ImageView의 Content  Mode를 Aspect Fit이 아니라 Aspect Fill로 바꿔주면 된다. 그럼 빈틈없이 꽉 채워준다. 그래도 사이즈가 다르다면 이미지 자체가 다른 것.  

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-37](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-37.png)

- Summary

CollectionView를 쓴다는 것은 한 행에 여러 아이템을 넣고 싶은데,  여러 아이템은 디바이스 사이즈마다 다르게 들어갈 수 있는데 사이즈 계산을 개발자가 직접적으로 해줄 수 있다는 것.  

직접적으로 정한 사이즈를 적용시키기 위해서 스토리보드 CollectionView의  size inspector에서 Estimate Size를 None으로 해주었다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-38](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-38.png)

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-39](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-39.png)

즉, 사이즈를 추정하지 말고 개발자가 정해준대로 하라는 의미.

## 05. Animation ## 개념##  
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-40](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-40.png)

이렇게 디테일 뷰에 애니메이션이 들어간 것을 만들 것. 

-  애니메이션을 넣으면 좋은 점이 무엇일까

딱딱한 앱 사용성을 높일 수 있고 사용자가 몰입할 수 있는 효과를 볼 수 있다고. 

- 애니메이션이란?

시간에 따라 뷰의 상태가 바뀌는 것.

- Animation의 3가지 중요한 개념

Animation = 시작, 끝, 시간을 이용해 구현 

- Animation API

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-41](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-41.png)

UIView에서 제공하는 애니메이션 API를 통해 

작업할 예정

코드는 크게 두가지 파트로 나뉨.
(1) withDuration: 애니메이션이 진행되는 시간 
(2) animations: {} : 애니메이션 클로저. 애니메이팅 시킬 것들을 넣어줌. 뷰의 프로퍼티가 아니라 뷰의 레이아웃 constraints 자체도 애니메이팅 할 수 있다. 애니메이션 가능한 뷰의 속성은 추후에 더 다룰 예정.

## 06. Animation ## 실습## 

## 

애니메이션을 적용할 디테일뷰의 디테일뷰컨트롤러에서 작업 

- 적용할 애니메이션 

레이블은 오른쪽에서 왼쪽으로 이동하는 것. 
이미지 플리핑 

- 레이블 이동 애니메이션 

애니메이션을 하기 전에 label의 constraints 확인. 

x축의 센터에 위치하도록 하는 constraints : Align center to X 

이 Constraints를 이용해 애니메이션을 구현할 예정. Constraints를 IBOutlet으로 따게 되면 애니메이션을 줄 수 있다. 

Name, Bounty Label의 Constraints(CentertoX)를 더블클릭 > ctrl 눌러서 IBOutlet 으로 코드에 넣기 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-42](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-42.png)

애니메이션은 뷰가 보여지는 시점 이후에 보여지는 것. 뷰 컨트롤러의 경우 func viewDidLoad()의 경우 뷰가 보여지는 시점은 아니고 메모리에 올라왔다고 알려주는 시점. 

뷰가 보여지는 시점을 알려주는 메서드는 func viewDidAppear()

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-43](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-43.png)

기본적으로 오토레이아웃을 가운데 두었는데 이걸 viewDidLoad 시점에 오른쪽에 가져다 두고, viewDidAppear 시점에 가운데로 가져다 두도록 한다고. 

viewDidLoad()에서 애니메이션을 준비하는 것. prepareAnimation() 메서드 

viewDidAppear()에서 showAnimation() 메서드를 호출. 

이제  메서드를 선언.

- prepareAnimation()

여기서 constant 값이 0. 양수값을 넣으면 오른쪽으로 값이 감 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-44](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-44.png)

prepareAnimation()에서 이 constant 값을 수정. 뷰의 가로사이즈만큼 옆으로 보낼 것. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-45](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-45.png)

bountyLabel의 centerX의 constant도 같이 가로사이즈만큼 옆으로 보낸다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-46](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-46.png)

- showAnimation()

그리고 showAnimation()에서 이 constant 값을 둘다 0으로 만들어준다. 

이건 레이아웃이기 때문에 레이아웃  자체가  애니메이팅이 되게 하면 된다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-47](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-47.png)

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-48](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-48.png)

0.3초 동안 애니메이션, 레이아웃 constraints를 바꿨기 때문에  self.view.layoutIfNeeded() (이것은 매우 간단한 버전ㄴ)

빌드앤런하면 레이블이 오른쪽에서  들어오는 것을 확인할 수 있다. 

복잡한 버전으로 해보기.
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-49](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-49.png)

UIView.animate는 더 복잡하게 구현할 수 있는 방식도 있다. 딜레이를 주거나 옵션을 통해 애니메이션의  easing이라고, 움직일 때 역동성을 줄 수 있음. .curveEaseIn 같은 걸 써보면서 파악하기 

completion 클로저의 경우 애니메이션이 끝났을 때 뭔가를 할 것인지를 하는 클로저. (예를 들어 애니메이션이 끝났을 때 페이지를 나간다거나, 배경색깔을  바꾸는 등) 지금 프로젝트에서는 할 것이 없으므로 nil

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-50](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-50.png)

빌드하면 바뀐 애니메이션을 확인할 수 있다. 좀 더 재밌게 bouncing을 넣을 수 있다. 

usingSpringWithDamping이 인자로 있는  메서드 UIView.animate()를  이용하면 된다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-51](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-51.png)

빌드하면 레이블이 들어오면서 스프링처럼 반동이 있는 느낌을 볼 수 있다. 

- 이미지 카드가 플립이 되는 애니메이션 

UIView.transition()  (showAnimation() 메서드 내에 선언 )

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-52](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-52.png)

option: .transitionFlipFromLeft
를 통해 왼쪽에서부터 플립되는 애니메이션을 넣을 수 있고 다른 애니메이션과 컴플리션은 nil로 넣어준다. 

##  
빌드하면 이미지가 플립되고 글자가 들어오는 것을 확인할 수 있다. 

-Summary
constraint를 이용하여 애니메이션을 하는 것을 실습. 애니메이션을 넣기 전에 초기값을 세팅하여 viewDidLoad()에서 준비해주고, viewDidAppear()에서 화면이 보여줬을 때 애니메이션을 보여줌. 여기서 Constraint의 값들을 원복하고 constraint의 값들은 layout에 해당하기 때문에 애니메이션 클로저에 layoutIfNeeded() (: 레이아웃을 다시 그려야할 필요성이 있다면 다시 그리게하는 메서드)를 호출시킨다. 

오토레이아웃이 바뀌면 레이아웃팅을 다시 해야한다. 값이 변경되었으므로 layoutIfNeeded()가 실행됨.  이 다음은 직접적인 뷰의 프로퍼티를 가지고 애니메이션을 실행하는 것을 실습. 

## 07. ## 뷰##  ## 속성을##  ## 이용한##  Animation ## 개념## 

Animating View Properties.

애니메이션  하는 뷰의 속성들은 크게 3가지 카테고리로 나뉨

Animatable View Properties

(1) Position & Size
bounds,  frame,  center

(2) Transformation
rotation, scale, translation
(translation은 위치의 변경)
위 셋을 합쳐서 사용할 수도  있다. 

(3) Appearance
backgroundColor, alpha

- 주의사항 

포지션과  사이즈는 오토레이아웃과 겹칠  수 있으므로 잘 고민해서 애니메이팅을 써야한다. 오토레이아웃에 벗어나는 부분들은 나중에 시스템은 해당 오토 레이아웃으로 다시 돌아가게 만들기 때문. 

오토레이아웃 신경을 덜 써도 되는 부분

스크린ㄴ 밖으로 나가거나 페이두아웃되서 애니메이션 끝나면 안보이거나 하면 오토레이아웃을  신경 덜 써도 된다. 

## 07. ## 뷰##  ## 속성을##  ## 이용한##  Animation ## 실습## 

이번에 해 볼 애니메이션은  글자들이  더  좌우로 통통대며  돌아오는 모양새로 만드는 것. 
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-53](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-53.png)

- prepareAnimation()

애니메이션을 준비

텍스트레이블이 오른쪽에서 컸다가 원래사이즈로 돌아옴. 

이제 뷰 속성을 이용하기 때문에 constraints를 사용하지 않는다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-54](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-54.png)

translation은 위치관련 
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-55](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-55.png)

CGAffineTransform을 이용해서 constraint으로 애니메이션 할 때처럼, nameLabel과  bountyLabel의 X값을 디바이스  화면의 width값만큼 오른쪽으로 이동시켜준다.

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-56](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-56.png)

사이즈를 3배로 키우고, 180도 회전시켜둔다. 

알파값도 0으로 만든다. 
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-57](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-57.png)

- showAnimation()

기존 코드 모두 삭제 (constraints와 관련된 애니메이션이기 때문에) 

변형을  가하기 전의 상태로 바꾼다. 
CGAffineTransform.identity 
이 identity로 가능하다. 

스프링 애니메이션을 넣을 거기 때문에 springwithdamping 이 있는 UIView.animate을 이용한다. 
![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-58](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-58.png)

여기서 identity를 이용해 바꾼 레이블들을 animations: {} 클로저에 넣어준다. 

또한 기존에 알파값을 0으로 바꿔주었으므로, animation 클로저에서 1로 바꾸어준다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-59](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-59.png)

나머지 인자들은 기존과 동일하게 가져온다. 

- 수정 
	* 어색하고 빠른 애니메이션을 수치를 수정하여 바꿔본다. 

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-60](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-60.png)

	* 이름과 바운티레이블이 같이 오는게 아니라 순서대로 오게 하기 위한다면,  animate() 메서드를 두개로 하여 각각 레이블을 나누고 딜레이를 주는 형식으로.  

![iOS 강의-ch11  Upgrade Bounty Ranking List App -01~08-61](images/iOS%20강의-ch11%20%20Upgrade%20Bounty%20Ranking%20List%20App%20-01~08-61.png)

- Summary 

레이아웃 constraint를 이용해 애니메이션을 하지 않고 이번에는 뷰 프로퍼티를 이용한 애니메이션을 함. 

-끝-

