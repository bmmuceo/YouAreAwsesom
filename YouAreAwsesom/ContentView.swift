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
           
                Text("I am an app developer!")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .foregroundStyle(.orange)
            HStack {
                Image(systemName: "figure.american.football")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.blue)
                Image(systemName: "figure.australian.football")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.indigo)
                Image(systemName: "figure.indoor.soccer")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.purple)
            }
        }
        
        
        .padding()
        
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
