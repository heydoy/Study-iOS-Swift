//
//  PlayerViewController.swift
//  AppleMusicStApp
//
//  Created by joonwon lee on 2020/01/12.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class PlayerViewController: UIViewController {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    @IBOutlet weak var playControlButton: UIButton!
    @IBOutlet weak var timeSlider: UISlider!
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var totalDurationLabel: UILabel!
    
    //TODO: SimplePlayer 만들고 프로퍼티 추가
    let simplePlayer = SimplePlayer.shared

    var timeObserver: Any?
    var isSeeking: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updatePlayButton()
        updateTime(time: CMTime.zero)
        // TODO: TimeObserver 구현
        // 플레이어에서 곡을 재생할 때 재생되는 시간을 일정하게 관찰하는 것
        
        timeObserver = simplePlayer.addPeriodicTimeObserver(forInterval: CMTime(seconds: 1, preferredTimescale: 10), queue: DispatchQueue.main, using: { time in
            self.updateTime(time: time)
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTintColor()
        updateTrackInfo()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // TODO: 뷰나갈때 처리 > 심플플레이어
        simplePlayer.pause()
        simplePlayer.replaceCurrentItem(with: nil) // 곡을 아예 빼버리는 것
    }
    
    @IBAction func beginDrag(_ sender: UISlider) {
        isSeeking = true
    }
    
    @IBAction func endDrag(_ sender: UISlider) {
        isSeeking = false
    }
    
    @IBAction func seek(_ sender: UISlider) {
        // TODO: 시킹 구현
        // 시킹을 할 때는 슬라이더의 값을 sender.value로 알 수 있음.
        guard let currentItem = simplePlayer.currentItem else { return }
                
        let position = Double(sender.value)  // 0...1 사이의 값
        let seconds = position * currentItem.duration.seconds
        
        let time = CMTime(seconds: seconds, preferredTimescale: 100)
        
        simplePlayer.seek(to: time)
    }
    
    @IBAction func togglePlayButton(_ sender: UIButton) {
        // TODO: 플레이버튼 토글 구현
        if simplePlayer.isPlaying {
            // 재생중일때는 pause
            simplePlayer.pause()
        } else {
            // 아닐 때는 play
            simplePlayer.play()
        }
        updatePlayButton()
    }
}

extension PlayerViewController {
    func updateTrackInfo() {
        // TODO: 트랙 정보 업데이트
        guard let track = simplePlayer.currentItem?.convertToTrack() else {
            return
        }
        thumbnailImageView.image = track.artwork
        titleLabel.text = track.title
        artistLabel.text = track.artist
    }
    
    func updateTintColor() {
        playControlButton.tintColor = DefaultStyle.Colors.tint
        timeSlider.tintColor = DefaultStyle.Colors.tint
    }
    
    func updateTime(time: CMTime) {
        // print(time.seconds)
        // currentTime label, totalduration label, slider
        
        // TODO: 시간정보 업데이트, 심플플레이어 이용해서 수정
        currentTimeLabel.text = secondsToString(sec: simplePlayer.currentTime)   // 3.1234 >> 00:03
        totalDurationLabel.text = secondsToString(sec: simplePlayer.totalDurationTime)  // 39.2045  >> 00:39
        
        if isSeeking == false {
            // 노래 들으면서 시킹하면, 자꾸 슬라이더가 업데이트 됨, 따라서 시킹아닐때마 슬라이더 업데이트하자
            // TODO: 슬라이더 정보 업데이트
            // seeking 하고 있지 않을 때는 자동으로 업데이트
            // 내가 seeking할 때는 나의 인풋이 우선
            timeSlider.value = Float(simplePlayer.currentTime / simplePlayer.totalDurationTime) // Double형태므로 Float 형으로 캐스팅
        }
    }
    
    func secondsToString(sec: Double) -> String {
        guard sec.isNaN == false else { return "00:00" }
        let totalSeconds = Int(sec)
        let min = totalSeconds / 60
        let seconds = totalSeconds % 60
        return String(format: "%02d:%02d", min, seconds)
    }
    
    func updatePlayButton() {
        // TODO: 플레이버튼 업데이트 UI작업 > 재생/멈춤
        if simplePlayer.isPlaying {
            let configuration = UIImage.SymbolConfiguration(pointSize: 42)
            let image = UIImage(systemName: "pause.fill", withConfiguration: configuration)
            playControlButton.setImage(image, for: .normal)
        }  else {
            let configuration = UIImage.SymbolConfiguration(pointSize: 42)
            let image = UIImage(systemName: "play.fill", withConfiguration: configuration)
            playControlButton.setImage(image, for: .normal)
        }
    }
}
