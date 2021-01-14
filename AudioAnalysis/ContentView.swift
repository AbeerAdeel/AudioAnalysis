//
//  ContentView.swift
//  AudioAnalysis
//
//  Created by Abeer Adeel on 2021-01-10.
//

import SwiftUI


struct ContentView: View {
    var font: String = "Avenir"
    
    init() {
        UITableView.appearance().backgroundColor = .black
    }
    
    var body: some View {
        VStack(spacing: 0) {
            // TODO get these values from search api created from go and hook it up
            ImageBackground(song: "What's Happening Brother", artist: "Marvin Gaye", image: "marvin")
            AnalysisList(id: "6eo04yKCNmMegAvdQPEhm8")
            BottomBar()
            .edgesIgnoringSafeArea(.bottom)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
            }
        }
    }
}
