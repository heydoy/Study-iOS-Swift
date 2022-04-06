# iOS 강의-ch12 Apple  Music st. Music App-01~05
# 

## 01. 뮤직앱 소개 
메인페이지와 플레이어 페이지가 있다. 
메인 페이지에서는 곡 리스트를 컬렉션 뷰를 이용해 보여주고, 해당 곡을 클릭하면 모달 뷰로 플레이어 뷰를 띄움. 플레이어 뷰에서는 해당 곡을 재생할 수 있다. 또한 다크모드,  라이트모드 둘 다  대응할  수 있게 되어있다.
![iOS 강의-ch12 Apple  Music st- Music App-01~05](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05.png)

![iOS 강의-ch12 Apple  Music st- Music App-01~05-1](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-1.png)

* 구현계획

메인 앱 화면 
- 화면구성, 곡 로드, 곡을 어떻게  표시할지

플레이어페이지
- 화면구성, 재생을 위한 곡준비, 해당 곡을 어떻게 재생할지 

***AVFoundation***

아이폰 앱 개발 시, 음악 재생을 포함한 모든 미디어 관련 작업을 할 때는 AVFoundation이라는 프레임워크를 사용하게된다. UIKit도 뷰를 구성하기  위한 프레임워크인 것처럼, 뷰와 관련된 객체를 사용할 때는 UIKit을 import 해온 것처럼 AVFoundation도 가져와야 한다. 

- AVFoundation 프레임워크를 사용하는 대표적인 앱 카테고리 3가지

1.카메라 (e.g.  snow)  / 2.비디오 (e.g.  netflix)  / 3. 음악 (e.g. spotify)

AVFoundation은 알면 무조건 도움되는 프레임워크. 소셜 네트워크(instagram, facebook, etc) 에도 다 AVFoundation을 이용. 

- AVPlayer

AVPlayer객체는 미디어를  플레이시켜주는  객체. 네이버뮤직, 오디오클립 등 AVPlayer를 적극적으로 앱에서 사용함.  

재생을 하기 위해 준비하는 작업들, 재생 및 정지를  어떻게 해야할지, 슬라이드를 위한 구간 스킵은 어떻게 할지가 다 AVPlayer를 이용해서 구현 

***D******ark Mode***

iOS 13 이후로 다크모드 대응이 중요해짐. 최소한의 다크모드에 대해 알아볼 예정 

CollectionReusableView (섹션헤더뷰)
여러  아이템을 표현할 때 아이템들의 헤더 또는 푸터를 표현할 수  있는 뷰. 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-2](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-2.png)

메인페이지 상단에 있는 헤더뷰 

## 02. 뮤직앱 프로젝트 구조 확인 

제공된 Starter 파일 확인하기 
- 📂Resources에 음악들이 있음 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-3](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-3.png)

- 메인 홈

![iOS 강의-ch12 Apple  Music st- Music App-01~05-4](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-4.png)

- 플레이어화면

![iOS 강의-ch12 Apple  Music st- Music App-01~05-5](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-5.png)

- 곡에 대한 모델 Model : Track

![iOS 강의-ch12 Apple  Music st- Music App-01~05-6](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-6.png)

- Dark모델 관련한 파일 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-7](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-7.png)

현재 프로젝트는 스토리보드로 작성됨, iOS 13이후부터 SwiftUI를 사용할 수 있기 때문에 

- 시뮬레이터에서 다크모드 설정하기

Home - Settings - Developer - Dark Appearance를 키면 다크모드, 끄면 라이트모드 
![iOS 강의-ch12 Apple  Music st- Music App-01~05-8](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-8.png)

![iOS 강의-ch12 Apple  Music st- Music App-01~05-9](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-9.png)

- 처음으로 할 것은 홈 화면 구성하는 것. 

## 03. 홈화면 컬렉션 뷰 추가 

홈화면을 컬렉션뷰와 커스텀셀로 구성할 것

- starter 프로젝트 main.storyboard 띄우고 collectionView 를 오브젝트 라이브러리에서 찾아 넣기

![iOS 강의-ch12 Apple  Music st- Music App-01~05-10](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-10.png)

- 컬렉션 뷰를 슈퍼뷰에 바짝 붙일 것

constraints 상하좌우를 0,0,0,0으로

-커스텀셀을 만들어야함
셀 사이즈는 width 180, height 240
Estimate Size : None
라고 하셨지만, xcode 13버전에서는 custom으로 한 후 셀 사이즈 지정

![iOS 강의-ch12 Apple  Music st- Music App-01~05-11](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-11.png)

커스텀 셀 안에는
이미지, 노래타이틀, 가수이름이 들어감

- Image, Label을 오브젝트 라이브러리에서 찾아서 넣어줌 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-12](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-12.png)

- 오토레이아웃 적용 

이미지 : 콘텐트 뷰(super view)에 leading, top, trailing / ctrl 눌러서 자기 자신에 aspect ratio를 1:1로 
노래제목레이블 : 사이즈 18 pt, 콘텐트뷰에 leading 0, trailing 0/ image에 vertical spacing 4, 
가수제목 레이블: 사이즈 16 pt, 회색, 콘텐트뷰에 leading 0, trailing 0/ 제목과 vertical spacing 0

![iOS 강의-ch12 Apple  Music st- Music App-01~05-13](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-13.png)

- Home - TrackCollectionViewCell로 설정하기

스토리보드 셀의 클래스명을 위로 바꿈
![iOS 강의-ch12 Apple  Music st- Music App-01~05-14](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-14.png)

- 재사용하기 위한 Collection Reusable View의 Reuse Identifier 설정

클래스의 이름과 동일하게 정하기로 함

![iOS 강의-ch12 Apple  Music st- Music App-01~05-15](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-15.png)

- 커스텀셀의 outlet을 연결 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-16](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-16.png)

![iOS 강의-ch12 Apple  Music st- Music App-01~05-17](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-17.png)

- 컬렉션 뷰를 이용하기 위한 프로토콜을 잘 구현해야함. 

Collection View 클릭 후 ctrl 눌러서  Home View Controller 클릭, datasource와 delegate 연결 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-18](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-18.png)

이렇게 함으로써, 콜렉션뷰에 필요한 프로토콜인 delegate와 dataSource를 Home View Controller에서 담당하도록 지정하게 됨. 

- HomeViewController.swift에 와보면

datasource : 어떻게 표시할지, 몇개를 보여줄지 

delegate : 셀이 클릭되었을 때 어떻게 될지, 

collectionViewDelegateFlowLayoout
: 사이즈를 계산하여 하기 

일전에는 클래스뒤에 프로토콜을 계속 추가했는데
![iOS 강의-ch12 Apple  Music st- Music App-01~05-19](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-19.png)

좀 더 깔끔하게 표현하기 위해서 extension 키워드를 이용하여 준수하려고 하는 프로토콜의 이름을 써서 사용 (필요와 프로토콜에 따라 나눠서 쪼개는 것, 가독성을 위해) 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-20](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-20.png)

![iOS 강의-ch12 Apple  Music st- Music App-01~05-21](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-21.png)

코드를 더 쪼개서 표현할 수 있음.

- 이제 강사님이 해놓은 Todo를 채워야 하는데, 곡에 대한 정보를 알아오는 객체를 구현할 것 (=트랙매니저)

## 04-05. 홈화면 트랙매니저 구현 1~2 

- UICollectionViewDelegateFlowLayout

![iOS 강의-ch12 Apple  Music st- Music App-01~05-22](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-22.png)

디바이스 가로 구하기 : collectionView.bounds.width 

여기서 flowlayout이 적용이 안된다... 
![iOS 강의-ch12 Apple  Music st- Music App-01~05-23](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-23.png)

분명 한줄에 2개여야되는데...

![iOS 강의-ch12 Apple  Music st- Music App-01~05-24](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-24.png)

View에서 Estimate size : None, Cell size check

- Section Inset size 상하좌우 20으로 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-25](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-25.png)

* 왜가운데가 되는지?..

![iOS 강의-ch12 Apple  Music st- Music App-01~05-26](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-26.png)

시뮬레이터로 돌리면 원하는 모양대로 나오긴 한다. 
![iOS 강의-ch12 Apple  Music st- Music App-01~05-27](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-27.png)

- > 작업 사이즈를 아이폰 11으로 (더 큰 화면) 바꾸니 해결되었다. 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-28](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-28.png)

- TrackManager를 만들기 전에 Track에 대한 모델의 정의가 필요하다. 이제 AVFoundation을 이용하여 음악재생앱을 만드는데, 미디어에 관련되어 필요한 객체들이 있는 공구함. UIKit import 해온 것처럼 import AVFoundation을 해야한다. 

이 객체 중 AVPlayer는 실제로 재생하는 플레이어로 SimplePlayer.swift에 있다. 재생하는 곡은 TrackManager에서 [AVPlayerItem]으로 표현되어있다. 

AVPlayerItem은 
AVAsset으로 구성할 수 있다. AVAsset은ㄴ 음악 파일을 추상화시키는 객체임. 

AVPlayerItem은 곡에 대한 url이 있으면 만들 수 있다. url은 로컬 Url이 될 수 있고, 서버의주소를 넣어도 가능. 

일단 지금 프로젝트는 로컬 파일이 있으므로 로컬 파일에 대한 Url을 가져와서 플레이어아이템을 구성하고 그걸 플레이어에 넣어서 재생할 것. 

- 트랙매니저를 만드는 데 앞서서 HomeViewController에서 트랙매니저를 통해서 필요한 것들을 살펴보자.

트랙들이 몇개인지, 트랙들을 가지고 있어야 하고, 해당하는 위치에 있는 걸 가져와서 셀에 표시할 곡을 전달해주고 셀은 그 곡을 받아서 컬렉션뷰셀 뷰를 업데이트. 해당하는 아이템을 클릭했을 때 플레이어뷰를 띄우는 것. 

헤더뷰에서 보여주는 곡 자체를 오늘의 트랙으로 세팅해줄 것. 
때문에 프로퍼티가 트랙들, 앨범들, 오늘의 곡 이렇게 3개가 있어야 함. 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-29](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-29.png)

실제로 뮤직앱 개발할 때 트랙과 앨범 객체를 이런 형태로 만듬. 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-30](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-30.png)

- loadTracks()

![iOS 강의-ch12 Apple  Music st- Music App-01~05-31](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-31.png)

Bundle은 이 앱 안에 있는 것들이 번들. 번들이 기본적으로 제공해주는 것들의 url들을 가져오는 것. 

extension은 확장자 

가져왔을 때 형태가 Optional이므로 없으면 빈 [] 어레이로 세팅해줌. 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-32](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-32.png)

for문 말고 map을 이용해서 
collection에서 제공하는 high order function 이라고 하고 곡예함수(?), 클로저를 이용한 함수를 쓸 수 있다. 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-33](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-33.png)

![iOS 강의-ch12 Apple  Music st- Music App-01~05-34](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-34.png)

![iOS 강의-ch12 Apple  Music st- Music App-01~05-35](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-35.png)

한줄로 줄일 수 있지만, 3) 정도가 명확하므로 이렇게 해서 넘겨도 되겠다. 

- track() 

트랙 객체로 넘겨줘야 할 필요가 있다. HomeViewController에서 셀을 구성할 때 트랙매니저에서 해당하는 인덱스의 아이템을 받아서 셀의 정보를 채워넣어야함. 앨범이미지나 타이틀 등. 

track() 메서드를 통해 트랙객체로 받아올 것. 
![iOS 강의-ch12 Apple  Music st- Music App-01~05-36](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-36.png)

- loadAlbums()

tracks의 경우 [AvplayerItem]의 배열 
이걸 [Track] 배열 형태로 만들고 싶다. 
compact map을 이용할 것 

책을 작가별로 분류하고 싶다고 할 때 사용할 수 있는 기법. 당장은 이해하기가 좀 어렵지만 중요한 개념이므로 한 번 더 체크해보기 
(트랙매니저구현02 영상)

![iOS 강의-ch12 Apple  Music st- Music App-01~05-37](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-37.png)

- loadOtherTodaysTrack() 

![iOS 강의-ch12 Apple  Music st- Music App-01~05-38](images/iOS%20강의-ch12%20Apple%20%20Music%20st-%20Music%20App-01~05-38.png)

        // 랜덤으로 어레이에서 요소를 추출하는 메서드 randomElement()

