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
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
    var body: some View {
        
        VStack {
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 30))
                .shadow(color: .white, radius: 130.0, x: 10.0)
                .minimumScaleFactor(5)
                .padding()
            
            
            
            
            Spacer()
            
            Button("Press Me") {
                
                let messages = ["hi",
                                "ho",
                                "yo",
                                "mo",
                                "co",
                                "do",
                                "ko",
                                "tu",
                                "wo"]
                
                message = messages[messageNumber]
                messageNumber += 1
                
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                
                //                if message == message1 {
                //                    message = message2
                //                    imageString = imageString2
                //                } else {
                //                    message = message1
                //                    imageString = imageString1
                //                }
                
                
                // TODO: Update the variable name variable
                imageName = "image\(imageNumber)"
                //  imageNumber = imageNumber + 1
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
                
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
