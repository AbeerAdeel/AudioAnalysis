//
//  AnalysisList.swift
//  AudioAnalysis
//
//  Created by Abeer Adeel on 2021-01-10.
//

import Foundation
import SwiftUI

struct AnalysisList: View {
    var font: String = "Avenir"
    
    var body: some View {
        List {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5) {
                Text("Start of Fade Out")
                    .font(Font.custom(font, size: 16.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0xF50C5F))
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("510.05")
                    .font(Font.custom(font, size: 14.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0x7A7A7A))
                    .multilineTextAlignment(.leading)
            }
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5) {
                Text("End of Fade In")
                    .font(Font.custom(font, size: 16.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0xF50C5F))
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("0.4523")
                    .font(Font.custom(font, size: 14.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0x7A7A7A))
                    .multilineTextAlignment(.leading)
            }
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5) {
                Text("Loudness")
                    .font(Font.custom(font, size: 16.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0xF50C5F))
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("-10.422")
                    .font(Font.custom(font, size: 14.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0x7A7A7A))
                    .multilineTextAlignment(.leading)
            }
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5) {
                Text("Tempo")
                    .font(Font.custom(font, size: 16.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0xF50C5F))
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("113.066")
                    .font(Font.custom(font, size: 14.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0x7A7A7A))
                    .multilineTextAlignment(.leading)
            }
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5) {
                Text("Time Signature")
                    .font(Font.custom(font, size: 16.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0xF50C5F))
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("4")
                    .font(Font.custom(font, size: 14.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0x7A7A7A))
                    .multilineTextAlignment(.leading)
            }
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5) {
                Text("Key")
                    .font(Font.custom(font, size: 16.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0xF50C5F))
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("10")
                    .font(Font.custom(font, size: 14.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0x7A7A7A))
                    .multilineTextAlignment(.leading)
            }
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5) {
                Text("Mode")
                    .font(Font.custom(font, size: 16.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0xF50C5F))
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("1")
                    .font(Font.custom(font, size: 14.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0x7A7A7A))
                    .multilineTextAlignment(.leading)
            }
        }
        .listStyle(PlainListStyle())
    }
}
