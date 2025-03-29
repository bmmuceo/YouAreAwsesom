//
//  ContentView.swift
//  YouAreAwsesom
//
//  Created by RyanA on 3/23/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1 /// Will never be -1
    @State private var lastImageNumber = -1
    @State private var audioPlayer: AVAudioPlayer!  /// Think of AVAudioPlayer as the audio equevalent as a buttin or text view.
    @State private var lastSoundNumber = -1
    
    
    let numberOfImages = 9
    let numberOfSounds = 6
    
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut, value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 30))
                .shadow(color: .white, radius: 130.0, x: 10.0)
                .animation(.linear, value: imageName)
                .padding()
            
            Spacer()
            
            Button("Press Me") { let messages =
                ["hi0",
                 "ho1",
                 "yo2",
                 "mo3",
                 "co4",
                 "do5",
                 "ko6",
                 "tu7",
                 "wo8"]
                
                var messageNumber : Int
                repeat {
                    messageNumber = Int.random (in: 0...messages.count-1)
                } while messageNumber == lastMessageNumber
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber : Int        /// Change the ( =)  to  (:) to shorten to just the term Int
                repeat {
                    imageNumber = Int.random(in:0...(numberOfImages-1))
                } while imageNumber == lastImageNumber
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
                
                var soundNumber : Int
                repeat {
                    soundNumber = Int.random(in:0...(numberOfSounds-1))
                } while soundNumber == lastSoundNumber
                lastSoundNumber = soundNumber
                let soundName = "sound\(soundNumber)"
                
                
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("😂 Could not read file named \(soundName)")
                    return
                }
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                } catch {
                    print("ERROR: \(error.localizedDescription) creatingaudioPlayer")
                }
                
            }
            
        }
        
        .buttonStyle(.borderedProminent)
        .font(.title2)
        .tint(.orange)
        .padding()
        
    }
}


#Preview {
    ContentView()
        .preferredColorScheme(.dark)
    
}
