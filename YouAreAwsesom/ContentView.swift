//
//  ContentView.swift
//  YouAreAwsesom
//
//  Created by RyanA on 3/23/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ("I'm A Programmer!")
    var body: some View {
        
        VStack {
            Spacer()
            
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.orange)
                    .frame(width: 290, height: 290, alignment: .center)
          
                Text(message)
                    .font(.largeTitle)
                    .fontWeight(.ultraLight)
                    .foregroundStyle(.orange)
            Spacer()
            
            HStack {
                Button("Awesome!") {
                    message = "Awsome!"
                }
              
           
                
                Button("Great!") {
                    message = "Great!"
                }
            
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
            .padding()
            
        }
    
    }


    #Preview {
        ContentView()
            .preferredColorScheme(.dark)
    }

