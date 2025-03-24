//
//  ContentView.swift
//  YouAreAwsesom
//
//  Created by RyanA on 3/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
           
                Text("I am an app developer!")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .foregroundStyle(.orange)
            
        }
        
        
        .padding()
        
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
