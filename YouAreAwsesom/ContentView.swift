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
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.thin)
                .foregroundStyle(.orange)
            Button("Click Me!") {
               message = "Awsome!"
                
            
            }
            
        }
            
            .padding()
            
        }
    }
    
    #Preview {
        ContentView()
            .preferredColorScheme(.dark)
    }

