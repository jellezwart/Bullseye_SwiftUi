//
//  ContentView.swift
//  Bullseye_SwiftUi
//
//  Created by Jelle Zwart on 12/03/2023.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible: Bool = false
  @State private var sliderValue: Double = 50.0
  @State private var game: Game = Game()
  
  var body: some View {
    VStack {
      VStack {
        Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO ")
          .bold()
          .multilineTextAlignment(.center)
          .lineSpacing(4)
          .font(.footnote)
          .kerning(2.0)
        Text(String(game.target))
          .kerning(-1.0)
          .font(.largeTitle)
          .fontWeight(.black)
          .bold()
        HStack {
          Text("1")
            .bold()
          Slider(value: $sliderValue, in:1.0...100.0)
          Text("100")
            .bold()
        }
        Button("Hit me") {
          alertIsVisible = true
        }
        .alert(
          "Hello there",
          isPresented: $alertIsVisible,
          actions: {
            Button("Awesome") {
              print("Alert closed")
            }
          },
          message: {
            var roundedValue = Int(sliderValue.rounded())
            Text("""
                The slider value is \(roundedValue).
                You scores \(game.points(sliderValue: roundedValue)) points this round.
              """)
          }
        )
      }
      .padding()
    }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
