# iOS 강의-ch12 Apple  Music st. Music App-06~15

# iOS # 강의# -ch12 Apple  Music st. Music App-06~15
# 

## 06. AVPlayerItem ## 확장하기## (extension)

extension을 이용해 특정 클래스를 확장하여 코드영역을 나눠 사용할 수 있도록(e.g. 프로토콜 상속  시)

이번 강의의 경우 특정프로토콜을 준수하는 것이 아니라 원하는 메소드를 추가하고 싶어서 확장하는  것.

![iOS 강의-ch12 Apple  Music st- Music App-06~15](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15.png)

또한, AVPlayerItem을 우리가 만들어놓은 Track으로 변환시키는 것에 대해서, AVPlayerItem 객체 안에 asset이라는 프로퍼티가 있고  asset안에는 metadata라고 해서 해당 파일안의 정보들 (음원의 경우 아티스트정보, 곡타이틀, 썸네일 등)  들어있는데 메타데이터 내의 정보를 가져올 수 있다.

실제 메타데이터에서 필요한 정보를 가져오는 것은 아래와 같이 구현되어있음.
![iOS 강의-ch12 Apple  Music st- Music App-06~15-1](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-1.png)

이걸 Computed Property로 따로 만든 것이 위의 코드 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-2](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-2.png)

곡을 재생하고 있는지 확인하는 Computed Property =  isPlaying

![iOS 강의-ch12 Apple  Music st- Music App-06~15-3](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-3.png)

나중에 객체에 대해서 실제로 확장하고 싶을 때, 이런 식으로 extension 키워드를 이용하면 된다. 다만 여기서  Stored Property를 추가할 수는 없다.

![iOS 강의-ch12 Apple  Music st- Music App-06~15-4](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-4.png)

AVPlayerItem의 정의에서 보면, 아까 asset이라는 프로퍼티가 있었는데,
![iOS 강의-ch12 Apple  Music st- Music App-06~15-5](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-5.png)

이를 따로 정의한다고 하면 아래처럼  뜬다.
![iOS 강의-ch12 Apple  Music st- Music App-06~15-6](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-6.png)

메서드와 Computed Property만 extension 에서 정의할 수 있다. 

## 07. ## 홈화면##  ## 컬렉션뷰##  ## 셀##  ## 구현##  ## 마무리##  

- HomeViewController

![iOS 강의-ch12 Apple  Music st- Music App-06~15-7](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-7.png)

![iOS 강의-ch12 Apple  Music st- Music App-06~15-8](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-8.png)

![iOS 강의-ch12 Apple  Music st- Music App-06~15-9](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-9.png)

- TrackCollectionViewCell

![iOS 강의-ch12 Apple  Music st- Music App-06~15-10](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-10.png)

awakeFromNib()은,
스토리보드에서 넣어놓은 컬렉션뷰가 실제로 앱에서 호출될 때, 저 스토리보드에  있는 아이템에서 실제로 앱에 올라올 때(awake) 이 메서드가 호출이 됨.  

- 빌드한 화면

![iOS 강의-ch12 Apple  Music st- Music App-06~15-11](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-11.png)

곡 썸네일, 아티스트들이 불러와진 것을 확인할 수 있다. 

## 08-09. ## 홈화면##  ## 컬렉션뷰##  ## 헤더##  ## 구현##  1~2
이제 홈화면에서 헤더뷰를  구현할 것. 헤더뷰!!  일단은  헤더뷰를 스토리보드에 추가해야한다.  헤더뷰의 경우도 셀과 같이 재사용이 가능하기 때문에 reusuable Identifier를 세팅하고 코드를  완성해주면 된다. 

- 스토리보드

 오브젝트 라이브러리에 들어가서 Collection  Reusuable View를 끌어서 CollectionViewCell 위로 위치시킨다.

![iOS 강의-ch12 Apple  Music st- Music App-06~15-12](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-12.png)

![iOS 강의-ch12 Apple  Music st- Music App-06~15-13](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-13.png)

![iOS 강의-ch12 Apple  Music st- Music App-06~15-14](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-14.png)

CollectionReusuableView(=헤더)를 잡아당겨 조금 크게 차지시킨다.
![iOS 강의-ch12 Apple  Music st- Music App-06~15-15](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-15.png)

헤더 사이즈는 Collection View를 클릭해서 Size Inspector 내에서 설정해준다.   

![iOS 강의-ch12 Apple  Music st- Music App-06~15-16](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-16.png)

일단은 296 정도로 설정해준다.

그 다음,
헤더뷰에 들어갈 것:  **_Today's  Track_****_이라는_****_ _****_글자_**가 들어가고, 그 안에 Today's Track에 대한 **_썸네일_**** ****이미지**가 들어가고, 조그만 아이콘과 Play Now라는 설명 텍스트가 들어가게 오브젝트를 배치

![iOS 강의-ch12 Apple  Music st- Music App-06~15-17](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-17.png)

Lines에서 행 갯수 표현 가능

(0으로  할 경우, 라인이 몇개든 표시한다는 의미) 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-18](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-18.png)

아이콘을 Attribute Inspector의 Image탭에서 시스템이 제공하는 아이콘을 선택

- Image : play.circle.fill
- Tint : System Pink Color

- Configuration : Point  Size / 30

![iOS 강의-ch12 Apple  Music st- Music App-06~15-19](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-19.png)

* 오토레이아웃팅

Today's  Pick : Top 30, Leading 20
Thumbnail Image : 위 글자와 vertical spacing, 부모뷰와 leading, trailing, fixed height 200
Play  Icon   : Thumb Image와 Trailing -10,  bottom  -5
Description Label: Thumb  Image와 Leading 10, Bottom -5 / play icon과 Horizontal spacing
![iOS 강의-ch12 Apple  Music st- Music App-06~15-20](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-20.png)

Constant 옆에 눌러서 15보다 >= 커야한다고 선택하기

Play Now Label : Imageview에 Leading 10, Description에 Vertical spacing 0

![iOS 강의-ch12 Apple  Music st- Music App-06~15-21](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-21.png)

노란색으로 보이는  것은 아직 반영은  안되어있지만 이렇게 될 것이다를 보여줌

![iOS 강의-ch12 Apple  Music st- Music App-06~15-22](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-22.png)

아래 버튼을 눌러  Update Constraint Contents 를 눌러줌 

Option + Command + '+' 버튼을 눌러서 오브젝트를 정해놓은 constraint로 보낼 수 있음 

* 헤더뷰 커스텀  클래스 

TrackCollectionHeaderView를 따로 만들어두었다.  identity inspector 에 클래스 명에 넣는다.

![iOS 강의-ch12 Apple  Music st- Music App-06~15-23](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-23.png)

Header View의 Connection Inspector를 열어서 outlet을 연결시킨다.

![iOS 강의-ch12 Apple  Music st- Music App-06~15-24](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-24.png)

Recieved Action의 cardTapped 메소드는 헤더뷰를  클릭하면 호출되는 메소드로, 헤더뷰 위에 투명한 버튼을 만들어서 올린 후 Outlet으로 연결한다.

오브젝트 라이브러리에서   버튼을 가져와서 레이어 순서상 Thumbnail  Image 밑에 둔 후(=이미지 뷰 앞에 있는 형국) label 제거, 

오토레이아웃 : image와 top, leading, trailing, bottom을 선택해서 같게 함 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-25](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-25.png)

cardTapped의 메서드를 button과 outlet 연결 후 touch up inside 선택 
![iOS 강의-ch12 Apple  Music st- Music App-06~15-26](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-26.png)

![iOS 강의-ch12 Apple  Music st- Music App-06~15-27](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-27.png)

이제 HomeViewcontroller에서 //헤더뷰 주석 이하 코드를 작업해주기.

-  HomeViewController

헤더뷰를 구성할 때 기본적으로

Today's Pick에 표시할 TodaysItem을 가져오고, 만들어둔 헤더의 커스텀 클래스를 가져올  것. 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-28](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-28.png)

탭핸들러 설정 
![iOS 강의-ch12 Apple  Music st- Music App-06~15-29](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-29.png)

ReuseIdentifier를  "TrackCollectionHeaderView"  클래스와 같은 이름으로 바꾼 후 스토리보드의  헤더뷰를 클릭하여 Reuse Identifier를 바꿔주기. 이걸 안하면 앱이 Crash 난다.
![iOS 강의-ch12 Apple  Music st- Music App-06~15-30](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-30.png)

헤더뷰를 표현하는 collectionView 메서드의  최종 모습  
![iOS 강의-ch12 Apple  Music st- Music App-06~15-31](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-31.png)

-TrackCollectionViewHeaderView 메서드  정의

update() 
![iOS 강의-ch12 Apple  Music st- Music App-06~15-32](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-32.png)

cardTapped

![iOS 강의-ch12 Apple  Music st- Music App-06~15-33](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-33.png)

-  빌드앤런하면 오류가 뜬다.

![iOS 강의-ch12 Apple  Music st- Music App-06~15-34](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-34.png)

dequeReusuableSupplementaryView로  해야한다. 기존의 cell로  해서 오류가 난 것!

![iOS 강의-ch12 Apple  Music st- Music App-06~15-35](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-35.png)

collectionView()에서 viewForSupplementaryElementOfKind가  있다. 이  kind를 가져와서 사용 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-36](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-36.png)

SupplementaryView, 보충하는 뷰에는 헤더와 푸터가 있다. 

다시 빌드앤런 하면

![iOS 강의-ch12 Apple  Music st- Music App-06~15-37](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-37.png)

헤더뷰의 이미지가 꽉차지 않아  아쉽다. 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-38](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-38.png)

썸네일 선택 후 View의 Content  Mode를 기존의  Aspect fit에서 Aspect Fill로 바꿔준다.  

![iOS 강의-ch12 Apple  Music st- Music App-06~15-39](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-39.png)

꽉찬 모습을  확인할 수 있다. 

? 버튼 텍스트 지웠는데 왜 뜨는지...?ㅜ.ㅜ

그냥 이미지 뒤로 보내서 해결함 . 이미지 뒤에  보내도 제대로 tap 이 되는 것이 확인  가능하다.

![iOS 강의-ch12 Apple  Music st- Music App-06~15-40](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-40.png)

![iOS 강의-ch12 Apple  Music st- Music App-06~15-41](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-41.png)

- Summary  

이번에 작성한 컬렉션뷰는 커스텀셀이 아닌 커스텀헤더뷰를 작성했다. 

## 1## 0. ## 플레이어뷰##   ## 뷰##  ## 구성##   

홈화면에서 아이템이 클릭되었을 때 플레이어뷰를 띄워야한다. 

* 플레이어뷰에 쓰이는 기능

	- 곡에 대한 썸네일, 타이틀, 아티스트

	- 재생 관련 정보 
	- 런타임 정보가 업데이트되고 슬라이더가 시간 맞춰서 업데이트되는 것

* 이미 세팅이 되어있음

![iOS 강의-ch12 Apple  Music st- Music App-06~15-42](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-42.png)

플레이어뷰의 빈 스토리보드와 코드가 있음. 

*  스토리보드 뷰 꾸미기

* 이미지뷰 : 300x300, 수퍼뷰와 top space 100, center horizontally
* 노래제목(레이블) : 이미지뷰와 vertical spacing, center horizontally
* 아티스트이름(레이블): 노래제목 레이블과 vertical spacing, center horizontally 
* 슬라이더: 버튼과 vertical spacing, 수퍼뷰에 leading 20, trailing 20  노란색이 남아있으면 Option + Command + [+] 버튼을 눌러서 맞추기 

* 시간(레이블2개) : 폰트사이즈를 14 light / 둘다 slider와 vertical spacing 10, 왼쪽 라벨은 slider와 leading, 오른쪽 라벨은 slider와 trailing 
* 버튼: 글자 삭제하고 이미지는 메인 스토리보드에서 썼던 시스템에서 제공하는 이미지를 그대로 사용할 것. configuration: pointsize, 40 정도로55x55, 수퍼뷰 bottom, center horizontally

![iOS 강의-ch12 Apple  Music st- Music App-06~15-43](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-43.png)

- 완성본

![iOS 강의-ch12 Apple  Music st- Music App-06~15-44](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-44.png)

- IBOutlet 변수를 만들어둔 스토리보드 요소들과 연결한다.

![iOS 강의-ch12 Apple  Music st- Music App-06~15-45](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-45.png)

- 스토리보드 안에 뷰 컨트롤러를 여러개 가져갈 수 있다. 여기서 플레이어뷰는 스토리보드를 아예 따로 만들어놓았는데, 분할해서 사용하는 것을 강사님이 선호. 같은 스토리보드 안에서 뷰 컨트롤러가 여러 개 있을 경우 협업할 때 관리가 어려울 수 있기 때문. 코드를 작성했다가 합치려고 할 때 conflict충돌이 나는 경우가 잦기 때문에 그래서 스토리보드를 될 수 있으면 뷰 컨트롤러를 하나만 가져가거나 세그웨이를 덜 연결시켜서 하는 방식으로 하고 있음. 잘개 쪼개자는 입장에서 스토리보드도 해당하는 컨텍스에 맞춰서 만들면 좋겠다는 생각이 든다고. 

## 

## 

## 11. ## 플레이어뷰##   ## 플레이어##  ## 만들기##  

플레이어 화면에 관련한 뷰들을 player.storyboard에서 다 구성하고 playerviewcontroller와 아울렛을  모두 연결해놓은 상태 

* PlayerViewController가 하는 일

* 홈화면에서 받은 곡정보를 표시

* 그 곡을 재생하는 것이 주요 기능

* PlayerViewController.swift

재생 관련해서는 앞서 SimplePlayer를 만들고 그 안에 AVPlayer를 이용해 곡 재생을 할 것. 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-46](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-46.png)

* SimplePlayer.swift를 먼저 완성해줄 것

- 싱글톤

플레이어는 여러개가 필요하진 않고, 앱 전반에 걸쳐 한 개만 필요하고 필요할 때마다 불려서 사용되게 하면 될 것 같다. => 이것을 싱글톤 객체라고 함. SimplePlayer도 싱글톤 객체로 만들 것.

![iOS 강의-ch12 Apple  Music st- Music App-06~15-47](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-47.png)

PlayerViewController.swift에서 선언한 simplePlayer가 이 싱글톤 객체 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-48](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-48.png)

이와 비슷한 개념으로,
앱 내에서 앱을 대변하는 객체가  있다. 앱에서 앱을 대변하는 객체는 여러개가 아니라 현재 앱에 대변하는 객체 하나만 있으면 된다.  

이것이 UIApplication.shared 임. 
![iOS 강의-ch12 Apple  Music st- Music App-06~15-49](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-49.png)

현재 앱관련한 필요 정보를 가져올 수도 있음

e.g.
UIApplication.shared.keyWindow

이와 비슷하게 플레이어를 하나만 만들어서 돌려쓰기 위해서 싱글톤 객체를 만드는 것.

싱글톤 객체는 static let shared로  만드는것.

- play, pause, seek, replaceCurrentItem()

![iOS 강의-ch12 Apple  Music st- Music App-06~15-50](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-50.png)

AVPlayer에서 같은 이름의 메소드를 가져옴

- 프로퍼티  구현

currentTime

![iOS 강의-ch12 Apple  Music st- Music App-06~15-51](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-51.png)

 만약 currentTime  값이 없을 경우 0을 반환 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-52](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-52.png)

totalDurationTime (현재 아이템의 전체 곡 길이)

![iOS 강의-ch12 Apple  Music st- Music App-06~15-53](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-53.png)

isPlaying (현재 재생중인지 아닌지)
AVPlayerItem 을 extension하여 만들어둔 메소드 사용하면 됨. 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-54](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-54.png)

![iOS 강의-ch12 Apple  Music st- Music App-06~15-55](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-55.png)

currentItem

![iOS 강의-ch12 Apple  Music st- Music App-06~15-56](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-56.png)

이제 이 SimplePlayer를 재생할 때 가져다 쓰면 된다. 

## 12. ## 홈화면에서##  ## 플레이어화면##  ## 띄우기##  

SimplePlayer를 이용해 곡을 재생하고, 곡 정보를 홈 화면에서 건네받을 때 어떻게 받을지 코드로 작성할 것.

* Home  화면에서 클릭이 됐을 때 플레이어 화면이 뜨는 것 

—  HomeViewController : UICollectionViewDelegate 

func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)

![iOS 강의-ch12 Apple  Music st- Music App-06~15-57](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-57.png)

스토리보드를 연결하여 띄운 것이므로 곡정보가 전달되지 않았다. indexPath.item을 이용하여 trackManager.tracks[]의 아이템을 가져와 simpleplayer의 replaceCurrentItem 메소드에 전달해주고 화면을 띄운다. 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-58](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-58.png)

헤더도 클릭하면 플레이어뷰가 떠야하므로 동일한 코드를 복사하여 붙여넣기 한다. 이때 클로저 안이므로 self.를 명시해서 써줄 것. 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-59](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-59.png)

뷰에 곡정보는 넘겼지만, 뷰에서 업데이트가 안된다. 
 
PlayerViewController에서 코드를 설정해주어야함. 

///  updateTintcolor(), updateTrackInfo() 메소드 부분에서  에러가 나므로 이 부분을 주석 처리해주어야 현재단계에서는 코드가 실행이 제대로됨 (아마 강사님이 찍으셨을 당시와 버전이 달라져서 그런것같음) 
![iOS 강의-ch12 Apple  Music st- Music App-06~15-60](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-60.png)

## 13. ## 플레이어어뷰##   ## 곡정보##  ## 표시##  ## 및##  ## 재생구현하기##  

* PlayerViewController.swift
* 곡에 대한 정보를 표시하기

viewWillAppear()에서 호출하는, 즉 뷰가 보이기전에 호출되는 updateTrackInfo() 메소드를 구현

![iOS 강의-ch12 Apple  Music st- Music App-06~15-61](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-61.png)

![iOS 강의-ch12 Apple  Music st- Music App-06~15-62](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-62.png)

구현할 경우 홈화면에서 클릭한 곡 정보가 플레이어뷰에 그대로 표시된다.  

![iOS 강의-ch12 Apple  Music st- Music App-06~15-63](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-63.png)

- 재생을 시켜주는 IBAction 들을 구현해야함. 

-- 버튼이 클릭되었을 때 play가 pause로 바뀌는 토글을 구현해주어야함. 이 때 playbutton을 @IBAction func togglePlayButton() 과 연결해야함. 

UI를 바꿔주는 메소드

updatePlayButton()

![iOS 강의-ch12 Apple  Music st- Music App-06~15-64](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-64.png)

실제로 플레이/퍼즈 동작하게 하는 메소드

togglePlayButton()
![iOS 강의-ch12 Apple  Music st- Music App-06~15-65](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-65.png)

- Slider와 IBAction 연결함

![iOS 강의-ch12 Apple  Music st- Music App-06~15-66](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-66.png)

Seeking은 14에서 구현!

** 참고

버튼 텍스트 Button을 지웠는데도 그대로 시뮬레이터에 뜬다면 xcode 오류이므로 Title 영역을 지우고 style을 다시 plain으로 설정해주면 No Font가 뜨면서 시뮬레이터에서도 제대로 없어져서 보이게 됨!

![iOS 강의-ch12 Apple  Music st- Music App-06~15-67](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-67.png)

## 14. ## 플레이어어뷰##  ## 재생시간##  ## 실시간##  ## 업데이트##  ## 및##  ## 시킹##  ## 구현##  

* PlayerViewController.swift

- 시간표현하기 

viewDidLoad() 에서 Time Observer 구현 
플레이어에서 재생되는  곡의 시간을 일정하게 관찰하는 것

addPeriodicTimeObserver  : 일정 가격으로  시간 관찰

![iOS 강의-ch12 Apple  Music st- Music App-06~15-68](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-68.png)

내가 관찰하고 싶은시간이  0.1초라면 CMTime은, Core Media Time의 약자로 플레이어에  대해서 그 밑에 단에서 사용하는 AVFoundation  밑에 있는 것. Core media에서 제공하는 툴을 AVFoundation에서도  쓰는 것. 

플레이어에서도  곡을 재생할  때, 각 곡을 0.1초씩 관찰하려고  할  때  CMTime이라는 객체를 만들어서 주어야함. CMTime은 단위초를 쪼개고싶은 양으로 표현하는 것.

혹은  2초를 20개로 나누는 식으로도 가능(효율적이진 않지만)  

![iOS 강의-ch12 Apple  Music st- Music App-06~15-69](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-69.png)

seconds와 preferredTimeScale
preferredTimeScale은 이것을 어떻게 분할시킬거냐임. 1초를 10개로 나눈 것이므로 10을 적어준다. 
![iOS 강의-ch12 Apple  Music st- Music App-06~15-70](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-70.png)

즉 기준시간이 있고, 그걸 몇개로 분할시킬 것이냐임. 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-71](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-71.png)

-  queue : DispatchQueue.main 은

sync, async 관련해서 concurrency 설명할 때 더 자세히 다룰 예정. 간단하게 설명하자면, 0.1초마다 UILabel을 계속 업데이트할 예정. UILabel은 메인스레드라는 공간에서 변경이 되어야 하는데 메인스레드에게 0.1초마다 알려주겠다라는  내용.

![iOS 강의-ch12 Apple  Music st- Music App-06~15-72](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-72.png)

- using:  closure 

해당하는 곡의 현재시간을 CMTime으로 넘겨줌. 현재시간을 받아서 업데이트해주는 것.

- updateTime() 메서드

![iOS 강의-ch12 Apple  Music st- Music App-06~15-73](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-73.png)

- seek() 메서드

![iOS 강의-ch12 Apple  Music st- Music App-06~15-74](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-74.png)

seconds가 결국 이런 형식으로 나올 것이다.  
결과값이 3분*0.5 = 90.12223333 정도로 나올 것. 
여기 CMTime에서 100은  소수점 2자리까지 쓰겠다는  의미 

* 재생을 하는 중에 화면을 나가면 꺼지게 처리

PlayerViewController > viewWillDisappear() 메소드에서 처리해준다.

![iOS 강의-ch12 Apple  Music st- Music App-06~15-75](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-75.png)

* Summary

익숙치 않은 개념들이 처음이라 어렵게 느껴질 수 있지만 코드를 자주 접하고 작성해보면 이런 부분이 익숙해져서 쉽게 느껴질  것. 자주 코드를 수정해보거나 업데이트를 하고 시도해보는 것을 추천. 

## 15. ## 플레이어어뷰##   ## 다크모드##  ## 설명## , ## 앱##  ## 전체##  ## 요약##   

* 다크모드

버튼과 글자 색상이 자동으로 바뀌어있음. ios 13되면서 이런 부분들이 까다로워졌는데, UILabel의 경우 디폴트 시스템 컬러를 쓰게 되면 라이트, 다크모드에 따라 색상이 바뀐다. 

그래서 될 수 있으면 최대한 디폴트 컬러를 사용하려고 했다. 심지어 시스템 핑크도 다크모드 대응이 되어있어서 사용한 것.

![iOS 강의-ch12 Apple  Music st- Music App-06~15-76](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-76.png)

애플 휴먼 인터페이스  가이드라인에서 확인할 수 있다. 

https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/

다크모드를 일일히 지정하먼 시간이 소요되므로 시스템컬러를 활용하는 것을 추천. 

- UpdateTintColor()

플레이어 컨트롤 버튼, 슬라이더의 색상을 변경해줌

![iOS 강의-ch12 Apple  Music st- Music App-06~15-77](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-77.png)

다크모드 자체가 ios 13 이후부터 제공되므로 #available(iOS  13.0, *) 을 이용해 ios 버전 체크. 그리고 traitCollection을 이용해 다크모드인지 아닌지 알 수 있다. 

![iOS 강의-ch12 Apple  Music st- Music App-06~15-78](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-06~15-78.png)

다크모드에서는 흰색을, 라이트모드에서는 검은색을 설정해줌. 

실제 데이터를 보면 사람들이 다크모드를 많이 쓰기 때문에 이에 대해 대응을 잘 해주어야 한다. 

* 앱 요약

홈화면에서는 곡을 로드해서 컬렉션 뷰로 표현. 컬렉션 헤더뷰도 구현. 

뷰 클릭 시 플레이어 뷰를 띄우고, 플레이어 뷰에 곡 정보를 전달하여 해당 정보를 업데이트시키고 곡을 컨트롤할 수 있는 플레이버튼과 슬라이더.  플레이 될 때 실시간 업데이트  되고 시킹하는 것을 다룸. 

AVFoundation에 대한 개념

AVPlayer를 이용해 곡을 재생

-끝-
