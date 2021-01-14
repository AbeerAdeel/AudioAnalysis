//
//  AnalysisRow.swift
//  AudioAnalysis
//
//  Created by Abeer Adeel on 2021-01-13.
//

import Foundation
import SwiftUI

struct AnalysisRow: View {
    var rowTitle: String
    var rowValue: String
    var font: String = "Avenir"
    
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5) {
            Text(rowTitle)
                .font(Font.custom(font, size: 16.0))
                .fontWeight(.medium)
                .foregroundColor(Color(hex: 0xF50C5F))
                .multilineTextAlignment(.leading)
            Spacer()
            Text(rowValue)
                .font(Font.custom(font, size: 14.0))
                .fontWeight(.medium)
                .foregroundColor(Color(hex: 0x7A7A7A))
                .multilineTextAlignment(.leading)
        }
    }
}
