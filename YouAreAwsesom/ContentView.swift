//
//  ContentView.swift
//  YouAreAwsesom
//
//  Created by RyanA on 3/23/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1 /// will never be -1
    @State private var lastImageNumber = -1
    
    let numberOfImages = 8
    
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
            
            Button("Press Me") {
                
                let messages = ["hi0",
                                "ho1",
                                "yo2",
                                "mo3",
                                "co4",
                                "do5",
                                "ko6",
                                "tu7",
                                "wo8"]
                
                var messageNumber = Int.random(in: 0...messages.count-1)
                while messageNumber == lastMessageNumber {
                    messageNumber = Int.random (in: 0...messages.count-1)
                    
                }
                message = messages [messageNumber]
                lastMessageNumber = messageNumber
                
                
               
                var imageNumber : Int
                repeat {
                    imageNumber = Int.random(in: 0...(numberOfImages-1))
                }while imageNumber == lastImageNumber
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
            }
            
            
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        
        
            .padding()
            
                }
            }
        }
        
        #Preview {
            ContentView()
                .preferredColorScheme(.dark)
            
        }
