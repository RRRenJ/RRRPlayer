//
//  PLPlayerManager.swift
//  RRRPlayer
//
//  Created by 任敬 on 2022/6/17.
//

import UIKit
import PLPlayerKit
import ZFPlayer

class PLPlayerManager: NSObject {
    //MARK: - property public
    var view = ZFPlayerView()
    
    var volume : Float = 0
    
    
    
    //MARK: - property private
   private lazy var options: PLPlayerOption = {
        var options = PLPlayerOption.default()
        options.setOptionValue(15, forKey: PLPlayerOptionKeyTimeoutIntervalForMediaPackets)
        options.setOptionValue(false, forKey: PLPlayerOptionKeyCacheBufferDurationSpeedAdjust)
        return options
    }()
    
    private lazy var player: PLPlayer? = {
        var player = PLPlayer(url: nil, option: self.options)
        player?.delegate = self
        return player
    }()
    
    private var _rate : Float = 1
    private var lastVolum : Float = 0.5
    
}

//MARK: - method public
extension PLPlayerManager : ZFPlayerMediaPlayback {
    
    
    var isMuted: Bool {
        get {
            return self.isMuted
        }
        set(muted) {
            self.isMuted = muted
            if muted {
                self.lastVolum = self.player?.getVolume() ?? 0.5
                self.player?.setVolume(0)
            }else{
                if self.lastVolum == 0 {
                    self.lastVolum = self.player?.getVolume() ?? 0.5
                }
                self.player?.setVolume(self.lastVolum)
            }
        }
    }
    
    var rate: Float {
        get {
            return _rate == 0 ? 1 : _rate
        }
        set(rate) {
            _rate = rate
            if let player = self.player, fabs(player.playSpeed) > 0.00001 {
                player.playSpeed = Double(rate)
            }
        }
    }
    
    var currentTime: TimeInterval {
        get{
            return self.player?.currentTime.seconds ?? 0
        }
    }
    
    var totalTime: TimeInterval {
        get{
            return self.player?.totalDuration.seconds ?? 0
        }
    }
    
    var bufferTime: TimeInterval {
        <#code#>
    }
    
    var seekTime: TimeInterval {
        get {
            <#code#>
        }
        set(seekTime) {
            <#code#>
        }
    }
    
    var isPlaying: Bool {
        <#code#>
    }
    
    var scalingMode: ZFPlayerScalingMode {
        get {
            <#code#>
        }
        set(scalingMode) {
            <#code#>
        }
    }
    
    var isPreparedToPlay: Bool {
        <#code#>
    }
    
    var shouldAutoPlay: Bool {
        get {
            <#code#>
        }
        set(shouldAutoPlay) {
            <#code#>
        }
    }
    
    var assetURL: URL {
        get {
            <#code#>
        }
        set(assetURL) {
            <#code#>
        }
    }
    
    var presentationSize: CGSize {
        get {
            <#code#>
        }
        set(presentationSize) {
            <#code#>
        }
    }
    
    var playState: ZFPlayerPlaybackState {
        <#code#>
    }
    
    var loadState: ZFPlayerLoadState {
        <#code#>
    }
    
    var playerPrepareToPlay: ((ZFPlayerMediaPlayback, URL) -> Void)? {
        get {
            <#code#>
        }
        set(playerPrepareToPlay) {
            <#code#>
        }
    }
    
    var playerReadyToPlay: ((ZFPlayerMediaPlayback, URL) -> Void)? {
        get {
            <#code#>
        }
        set(playerReadyToPlay) {
            <#code#>
        }
    }
    
    var playerPlayTimeChanged: ((ZFPlayerMediaPlayback, TimeInterval, TimeInterval) -> Void)? {
        get {
            <#code#>
        }
        set(playerPlayTimeChanged) {
            <#code#>
        }
    }
    
    var playerBufferTimeChanged: ((ZFPlayerMediaPlayback, TimeInterval) -> Void)? {
        get {
            <#code#>
        }
        set(playerBufferTimeChanged) {
            <#code#>
        }
    }
    
    var playerPlayStateChanged: ((ZFPlayerMediaPlayback, ZFPlayerPlaybackState) -> Void)? {
        get {
            <#code#>
        }
        set(playerPlayStateChanged) {
            <#code#>
        }
    }
    
    var playerLoadStateChanged: ((ZFPlayerMediaPlayback, ZFPlayerLoadState) -> Void)? {
        get {
            <#code#>
        }
        set(playerLoadStateChanged) {
            <#code#>
        }
    }
    
    var playerPlayFailed: ((ZFPlayerMediaPlayback, Any) -> Void)? {
        get {
            <#code#>
        }
        set(playerPlayFailed) {
            <#code#>
        }
    }
    
    var playerDidToEnd: ((ZFPlayerMediaPlayback) -> Void)? {
        get {
            <#code#>
        }
        set(playerDidToEnd) {
            <#code#>
        }
    }
    
    var presentationSizeChanged: ((ZFPlayerMediaPlayback, CGSize) -> Void)? {
        get {
            <#code#>
        }
        set(presentationSizeChanged) {
            <#code#>
        }
    }
    
    func prepareToPlay() {
        <#code#>
    }
    
    func reloadPlayer() {
        <#code#>
    }
    
    func play() {
        <#code#>
    }
    
    func pause() {
        <#code#>
    }
    
    func replay() {
        <#code#>
    }
    
    func stop() {
        <#code#>
    }
    
    func seek(toTime time: TimeInterval, completionHandler: ((Bool) -> Void)? = nil) {
        <#code#>
    }
    
    func seek(toTime time: TimeInterval) async -> Bool {
        self.player?.seek(to: CMTimeMake(value: Int64
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         , timescale: <#T##Int32#>))
    }
    
    
}

extension  PLPlayerManager : PLPlayerDelegate {
    
    func player(_ player: PLPlayer, firstRender firstRenderType: PLPlayerFirstRenderType) {
        
    }
    
    func player(_ player: PLPlayer, statusDidChange state: PLPlayerStatus) {
        
    }
    
    func player(_ player: PLPlayer, stoppedWithError error: Error?) {
        
    }
    
    func player(_ player: PLPlayer, width: Int32, height: Int32) {
        
    }
    
    
    func player(_ player: PLPlayer, seekToCompleted isCompleted: Bool) {
        
    }
    
}

//MARK: - method private
private extension  PLPlayerManager  {
    

    
}
