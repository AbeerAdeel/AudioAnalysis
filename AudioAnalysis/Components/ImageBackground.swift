//
//  ImageBackground.swift
//  AudioAnalysis
//
//  Created by Abeer Adeel on 2021-01-10.
//

import Foundation
import SwiftUI

struct ImageBackground: View {
    let song: String
    let artist: String
    let image: String
    
    var font: String = "Avenir"
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            .blendMode(/*@START_MENU_TOKEN@*/.darken/*@END_MENU_TOKEN@*/)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            .overlay(
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0) {
                    HStack(alignment: .center, spacing: 30) {
                        Spacer()
                        Button(action: {
                            print("Back button was tapped")
                        }) {
                            Image(systemName: "chevron.left")
                                .frame(width: 8.88, height: 17.99, alignment: .center)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack {
                            Text(song)
                                .font(Font.custom(font, size: 18.0))
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                            Text(artist)
                                .font(Font.custom(font, size: 14.0))
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                        }
                        Spacer()
                        Button(action: {
                            print("Ellipsis button was tapped")
                        }) {
                            Image(systemName: "info.circle.fill")
                                .frame(width: 5.13, height: 19.03, alignment: .center)
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    Spacer()
                    HStack(alignment: .center, spacing: 10) {
                        Spacer()
                        Text("3:00")
                            .font(Font.custom(font, size: 12.0))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        SwiftUISlider(
                            thumbColor: UIColor(rgb: 0xF50C5F),
                            minTrackColor: UIColor(rgb: 0xF50C5F),
                            maxTrackColor: .white,
                            value: .constant(0.88)
                        )
                        Text("3:40")
                            .font(Font.custom(font, size: 12.0))
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    
                }
            )
    }
}
