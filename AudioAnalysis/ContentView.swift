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
            ImageBackground(song: "Doomsday", artist: "MF Doommm", image: "doom")
            AnalysisList()
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
