//
//  AnalysisList.swift
//  AudioAnalysis
//
//  Created by Abeer Adeel on 2021-01-10.
//

import Foundation
import SwiftUI

struct Response: Codable {
    var track: Track
}

struct Track: Codable {
    var start_of_fade_out: Float
    var end_of_fade_in: Float
    var loudness: Float
    var tempo: Float
    var time_signature: Float
    var key: Int
    var mode: Int
}


struct AnalysisList: View {
    @State var result: Track = Track(start_of_fade_out: 0, end_of_fade_in: 0, loudness: 0, tempo: 0, time_signature: 0, key: 0, mode: 0)
    var id: String
    var font: String = "Avenir"
    
    var body: some View {
        List {
            AnalysisRow(rowTitle: "Start of Fade Out", rowValue: String(result.start_of_fade_out))
            AnalysisRow(rowTitle: "End of Fade In", rowValue: String(result.end_of_fade_in))
            AnalysisRow(rowTitle: "Loudness", rowValue: String(result.loudness))
            AnalysisRow(rowTitle: "Tempo", rowValue: String(result.tempo))
            AnalysisRow(rowTitle: "Time Signature", rowValue: String(result.time_signature))
            AnalysisRow(rowTitle: "Key", rowValue: String(result.key))
            AnalysisRow(rowTitle: "Mode", rowValue: String(result.mode))
        }
        .listStyle(PlainListStyle())
        .onAppear(perform: loadData)
        
    }
    
    
    func loadData() {
        let urlString: String = "http://localhost:8080/audio-analysis/" + self.id
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) {data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                    DispatchQueue.main.async {
                        self.result = decodedResponse.track
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}
