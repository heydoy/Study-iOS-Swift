//
//  TrackCollectionHeaderView.swift
//  AppleMusicStApp
//
//  Created by joonwon lee on 2020/03/15.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit
import AVFoundation

class TrackCollectionHeaderView: UICollectionReusableView {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var item: AVPlayerItem?
    var tapHandler: ((AVPlayerItem) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.layer.cornerRadius = 4
    }
    
    func update(with item: AVPlayerItem) {
        // TODO: 헤더뷰 업데이트 하기
        self.item = item
        // 트랙으로 변환
        guard let track = item.convertToTrack() else { return }
        
        // 썸네일과 디스크립션 레이블 업데이트
        self.thumbnailImageView.image = track.artwork
        self.descriptionLabel.text = "Today's Pick is \(track.artist)'s album  - \(track.albumName), Let's listen"

    }
    
    @IBAction func cardTapped(_ sender: UIButton) {
        // TODO: 탭했을때 처리
        // 탭핸들러를 하기전의 오늘의 today's pick 이 있는지 확인
        guard let todaysItem = item else { return }
        // 탭핸들러는 위를 보면 클로저를 수행하도록 한다. 
        tapHandler?(todaysItem)
    }
}
