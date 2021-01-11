//
//  BottomBar.swift
//  AudioAnalysis
//
//  Created by Abeer Adeel on 2021-01-10.
//

import Foundation
import SwiftUI

struct BottomBar: View {
    var font: String = "Avenir"
    
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 60, alignment: .top)
                .overlay(
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 30) {
                        Spacer()
                        Button(action: {
                            print("Backward button was tapped")
                        }) {
                            Image(systemName: "backward.fill")
                                .frame(width: 20, height: 17, alignment: .center)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Button(action: {
                            print("Play button was selected")
                        }) {
                            Image(systemName: "pause.circle.fill")
                                .font(.system(size: 45, weight: .ultraLight))
                                .foregroundColor(Color(hex: 0xF50C5F))
                        }
                        Spacer()
                        Button(action: {
                            print("Forward button selected")
                        }) {
                            Image(systemName: "forward.fill")
                                .frame(width: 20, height: 17, alignment: .center)
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                )
        }
    }
}
