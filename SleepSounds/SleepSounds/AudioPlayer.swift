//
//  AudioPlayer.swift
//  SleepSounds
//
//  Created by Sergio Vega on 19/04/23.
//

import SwiftUI
import AVKit

struct AudioPlayer: View {
    @State var audioPlayer: AVAudioPlayer!
    @State var progress: CGFloat = 0.0
    @State private var playing: Bool = false
    @State var duration: CGFloat = 0.0
    @State var formattedDuration: String = "00:00"
    @State var formmatedProgress: String = "00:00"
    
    var body: some View {
        ZStack{
            ColorBg
            VStack(spacing: 50){
                //Album image
                VStack(spacing: 25){
                    Image("guitar-camp")
                        .cornerRadius(25)
                    VStack(spacing: 5){
                        Text("Guitar Camp")
                            .foregroundColor(.gray)
                        Text("The Guitars")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                }
                .foregroundColor(.white)
                
                //Progress bar
                VStack{
                    GeometryReader { gr in
                       Capsule()
                            .stroke(TabColor, lineWidth: 2)
                            .overlay(Circle()
                                .position(CGPoint(x: progress * gr.size.width, y: 4))
                                .foregroundColor(PastelBlue)
                                .frame(width: 8, height: 8), alignment: .leading)
                    }.frame(height: 2)
                    
                    HStack{
                        Text(formmatedProgress)
                            .font(.caption.monospacedDigit())
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Text(formattedDuration)
                            .font(.caption.monospacedDigit())
                            .foregroundColor(.white)
                    }
                }
                .padding(20)
                .frame(height: 50, alignment: .center)
                
                //Control buttons
                HStack(alignment: .center, spacing: 20) {
                    Spacer()
                    
                    Button {
                        let decrease = self.audioPlayer.currentTime - 15
                        if decrease < 0.0 {
                            self.audioPlayer.currentTime = 0.0
                        } else {
                            self.audioPlayer.currentTime -= 15
                        }
                    } label: {
                        Image(systemName: "gobackward.15")
                            .font(.title)
                            .imageScale(.medium)
                    }.foregroundColor(.white)
                    
                    Spacer()
                    
                    Button {
                        if audioPlayer.isPlaying {
                            playing = false
                            self.audioPlayer.pause()
                        } else if !audioPlayer.isPlaying {
                            playing = true
                            self.audioPlayer.play()
                        }
                    } label: {
                        Image(systemName: playing ? "pause.fill" : "play.fill")
                            .font(.title)
                            .imageScale(.large)
                    }.foregroundColor(.white)
                    
                    Spacer()
                    
                    Button {
                        let increase = self.audioPlayer.currentTime + 15
                        if increase < self.audioPlayer.duration {
                            self.audioPlayer.currentTime = increase
                        } else {
                            self.audioPlayer.currentTime = duration
                        }
                    } label: {
                        Image(systemName: "goforward.15")
                            .font(.title)
                            .imageScale(.medium)
                    }.foregroundColor(.white)
                    
                    Spacer()
                }
            }
        }
        .ignoresSafeArea(.all)
        .onAppear(perform: initialiseAudioPlayer)
    }
    
    func initialiseAudioPlayer(){
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = [.pad]
        
        let path = Bundle.main.path(forResource: "audioTest", ofType: "mp3")!
        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(filePath: path))
        self.audioPlayer.prepareToPlay()
        
        duration = self.audioPlayer.duration
        
        formmatedProgress = formatter.string(from: TimeInterval(self.audioPlayer.duration))!
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){ _ in
            if !audioPlayer.isPlaying {
                playing = false
            }
            
            progress = CGFloat(audioPlayer.currentTime / audioPlayer.duration)
            
            duration = Double(audioPlayer.duration - audioPlayer.currentTime)
            
            formmatedProgress = formatter.string(from: TimeInterval(self.audioPlayer.currentTime))!
            
            formattedDuration = formatter.string(from: TimeInterval(duration))!
        }
    }
}

struct AudioPlayer_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlayer()
        AudioPlayer()
            .previewLayout(PreviewLayout.fixed(width: 400, height: 300))
            .environment(\.sizeCategory, .accessibilityExtraLarge)
    }
}
