//
//  HomeViewController.swift
//  AppleMusicStApp
//
//  Created by joonwon lee on 2020/01/11.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    // TODO: 트랙관리 객체 추가
    let trackManager: TrackManager = TrackManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeViewController: UICollectionViewDataSource {
    // 몇개 표시 할까?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // TODO: 트랙매니저에서 트랙갯수 가져오기
        return trackManager.tracks.count
    }
    
    // 셀 어떻게 표시 할까?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // TODO: 셀 구성하기
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrackCollecionViewCell", for: indexPath) as? TrackCollecionViewCell else {
            return UICollectionViewCell()
        }
        
        let track = trackManager.track(at: indexPath.item)
        cell.updateUI(item: track)
        
        return cell
    }
    
    // 헤더뷰 어떻게 표시할까?
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            // TODO: 헤더 구성하기
            // Today's Pick으로 쓸 트랙 가져오기
            guard let item = trackManager.todaysTrack else {
                return UICollectionReusableView()
            }
            // 만들어둔 헤더의 커스텀 클래스 가져오기
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "TrackCollectionHeaderView", for: indexPath) as? TrackCollectionHeaderView else {
                return  UICollectionReusableView()
            }
            
            // 헤더의 아이템 업데이트, 탭핸들러
            header.update(with: item)
            header.tapHandler = { item -> Void in
                // 탭이 되었을 때 곡에 대한 플레이어를 띄운 후 플레이어에서 재생
                
                // Player.storyboard를 가져오는 것
                let playerStoryboard = UIStoryboard.init(name: "Player", bundle: nil)
                // 스토리보드에서 특정 ViewController를 찾아 띄우기
                // 스토리보드에 있는 특정 identifier를 가진 뷰컨트롤러 인스턴스를 만든다.
                guard let playerVC = playerStoryboard.instantiateViewController(withIdentifier: "PlayerViewController") as? PlayerViewController else { return }
                
                // 곡 정보를 전달하기. 여기서는 closure의 헤더뷰에 설정된 item이 있으므로 그대로 써줌.
                playerVC.simplePlayer.replaceCurrentItem(with: item) // 곡을 갈아끼우는 메소드가 이미 있음
                
                // 띄우기
                self.present(playerVC, animated: true, completion: nil)
                
            }
            return header
            
        default:
            return UICollectionReusableView()
        }
    }
}

extension HomeViewController: UICollectionViewDelegate {
    // 클릭했을때 어떻게 할까?
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // TODO: 곡 클릭시 플레이어뷰 띄우기
        // Player.storyboard를 가져오는 것
        let playerStoryboard = UIStoryboard.init(name: "Player", bundle: nil)
        // 스토리보드에서 특정 ViewController를 찾아 띄우기
        // 스토리보드에 있는 특정 identifier를 가진 뷰컨트롤러 인스턴스를 만든다.
        guard let playerVC = playerStoryboard.instantiateViewController(withIdentifier: "PlayerViewController") as? PlayerViewController else { return }
        
        // 곡 정보를 전달하기
        let item = trackManager.tracks[indexPath.item]
        playerVC.simplePlayer.replaceCurrentItem(with: item) // 곡을 갈아끼우는 메소드가 이미 있음
        
        // 띄우기
        present(playerVC, animated: true, completion: nil)
        
        
        
    }
}


extension HomeViewController: UICollectionViewDelegateFlowLayout {
    // 셀 사이즈 어떻게 할까?
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 20 - card(width) - 20 - card(width) - 20
        let width: CGFloat = (collectionView.bounds.width - (20 * 3))/2
        let height: CGFloat = width + 60
        return CGSize(width: width, height: height)
    }

}



//extension UIViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        let margin: CGFloat = 20
//        let width: CGFloat = (collectionView.bounds.width - margin) / 2
//        let height: CGFloat = width * 1.4
//
//        return CGSize(width: width, height: height )
//    }
//}
