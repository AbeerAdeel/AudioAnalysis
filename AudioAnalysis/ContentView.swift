//
//  ContentView.swift
//  AudioAnalysis
//
//  Created by Abeer Adeel on 2021-01-10.
//

import SwiftUI

struct SwiftUISlider: UIViewRepresentable {

  final class Coordinator: NSObject {
    // The class property value is a binding: It’s a reference to the SwiftUISlider
    // value, which receives a reference to a @State variable value in ContentView.
    var value: Binding<Double>

    // Create the binding when you initialize the Coordinator
    init(value: Binding<Double>) {
      self.value = value
    }

    // Create a valueChanged(_:) action
    @objc func valueChanged(_ sender: UISlider) {
      self.value.wrappedValue = Double(sender.value)
    }
  }

  var thumbColor: UIColor = .white
  var minTrackColor: UIColor?
  var maxTrackColor: UIColor?

  @Binding var value: Double

  func makeUIView(context: Context) -> UISlider {
    let slider = UISlider(frame: .zero)
    slider.thumbTintColor = thumbColor
    slider.minimumTrackTintColor = minTrackColor
    slider.maximumTrackTintColor = maxTrackColor
    slider.value = Float(value)

    slider.addTarget(
      context.coordinator,
      action: #selector(Coordinator.valueChanged(_:)),
      for: .valueChanged
    )

    return slider
  }

  func updateUIView(_ uiView: UISlider, context: Context) {
    // Coordinating data between UIView and SwiftUI view
    uiView.value = Float(self.value)
  }

  func makeCoordinator() -> SwiftUISlider.Coordinator {
    Coordinator(value: $value)
  }
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

struct ContentView: View {
    @State private var time: Double = 80
    var font: String = "Avenir"
    
    var body: some View {
        VStack(spacing: 0) {
            Image("damn")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blendMode(/*@START_MENU_TOKEN@*/.darken/*@END_MENU_TOKEN@*/)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                .overlay(
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                        HStack(alignment: .center, spacing: 20) {
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
                                Text("DUCKWORTH")
                                    .font(Font.custom(font, size: 18.0))
                                    .fontWeight(.heavy)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                Text("Kendrick Lamar")
                                    .font(Font.custom(font, size: 14.0))
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                            }
                            Spacer()
                            Button(action: {
                                print("Ellipsis button was tapped")
                            }) {
                                Image(systemName: "ellipsis")
                                    .frame(width: 5.13, height: 19.03, alignment: .center)
                                    .foregroundColor(.white)
                            }
                            Spacer()
                        }
                        Spacer()
                        HStack(alignment: .center, spacing: 10) {
                            Spacer()
                            Text("0:00")
                                .font(Font.custom(font, size: 12.0))
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                            SwiftUISlider(
                                 thumbColor: UIColor(rgb: 0xF50C5F),
                                 minTrackColor: UIColor(rgb: 0xF50C5F),
                                 maxTrackColor: .white,
                                 value: .constant(0.5)
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
            
            Spacer()
            List {
                Text("Hello World")
                    .font(Font.custom(font, size: 16.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0xF50C5F))
                    .multilineTextAlignment(.leading)
                Text("Hello World")
                    .font(Font.custom(font, size: 16.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0xF50C5F))
                    .multilineTextAlignment(.leading)
                Text("Hello World")
                    .font(Font.custom(font, size: 16.0))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: 0xF50C5F))
                    .multilineTextAlignment(.leading)
            }
            .listStyle(PlainListStyle())
        }
        
        .edgesIgnoringSafeArea(.horizontal)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
