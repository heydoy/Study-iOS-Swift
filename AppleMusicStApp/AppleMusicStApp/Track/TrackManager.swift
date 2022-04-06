//
//  TrackManager.swift
//  AppleMusicStApp
//
//  Created by joonwon lee on 2020/01/12.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit
import AVFoundation

class TrackManager {
    // TODO: 프로퍼티 정의하기 - 트랙들, 앨범들, 오늘의 곡
    var tracks: [AVPlayerItem] = []
    var albums: [Album] = []
    var todaysTrack: AVPlayerItem?
    
    // TODO: 생성자 정의하기
    init() {
        // init을 하면서 트랙을 로드해야 됨
        let tracks = loadTracks()
        self.tracks = tracks
        self.albums = loadAlbums(tracks: tracks)
        self.loadOtherTodaysTrack()
    }

    // TODO: 트랙 로드하기
    func loadTracks() -> [AVPlayerItem] {
        // 파일들을 읽어서 AVPlayerItem을 만들기
        let urls = Bundle.main.urls(forResourcesWithExtension: "mp3", subdirectory: nil) ?? []
        // url을 가지고 AVPlayerItem 만들기
//        // 1) url이 여러개이므로 for문 사용
//        var items: [AVPlayerItem] = []
//        for url in urls {
//            let item = AVPlayerItem(url: url)
//            items.append(item)
//        }
        
//        // 2) map에서 클로저를 이용하여 가능
//        let items = urls.map { url -> AVPlayerItem in
//            let item = AVPlayerItem(url: url)
//            return item
//        }
        
//        // 3) 클로저는 더 줄일 수 있다.
//        let items = urls.map { url in
//            return AVPlayerItem(url: url)
//        }
        
        // 4) 더 짧게 줄일 수 있다.
        // url이 하나씩 들어오는데, 하나씩 들어오는 객체들이
        // AVPlayerItem으로 생성되서 리턴되겠다.
        let items = urls.map { AVPlayerItem(url: $0)}
        return items
    }
    
    // TODO: 인덱스에 맞는 트랙 로드하기
    func track(at index: Int) -> Track? {
        let playerItem = tracks[index]
        // playerItem:AVPlayerItem 에서 Track 형태로 전환해야하는데 강사님이 미리 만들어놓은 메서드가 있음.
        // extension+AVPlay.. 에서 convertToTrack() 메서드를 가져와서 사용하면 됨.
        // return playerItem.convertToTrack()
        let track = playerItem.convertToTrack()
        return track
    }

    // TODO: 앨범 로딩메소드 구현
    func loadAlbums(tracks: [AVPlayerItem]) -> [Album] {
        let trackList: [Track] = tracks.compactMap { $0.convertToTrack()}
        // 앨범에 대한 정보 딕셔너리. 트랙 중에서 앨범이 같은 애들을 만들면 됨.
        let albumDics = Dictionary(grouping: trackList, by: { (track) in track.albumName })
        var albums: [Album] = []
        for (key, value) in albumDics {
            let title = key
            let tracks = value
            let album = Album(title: title, tracks: tracks)
            albums.append(album)
        }
        return albums
    }

    // TODO: 오늘의 트랙 랜덤으로 선책
    func loadOtherTodaysTrack() {
        // 랜덤으로 어레이에서 요소를 추출하는 메서드 randomElement()
        self.todaysTrack = self.tracks.randomElement()
    }
}
