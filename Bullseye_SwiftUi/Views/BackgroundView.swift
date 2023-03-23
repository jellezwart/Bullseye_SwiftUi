//
//  BackgroundView.swift
//  Bullseye_SwiftUi
//
//  Created by Jelle Zwart on 23/03/2023.
//

import SwiftUI

struct BackgroundView: View {
  @Binding var game: Game
  
  var body: some View {
    VStack {
      TopView(game: $game)
      Spacer()
      BottomView(game: $game)
    }
    .padding()
    .background(
      Color("BackgroundColor")
        .ignoresSafeArea()
    )
  }
}

struct TopView: View {
  @Binding var game: Game
  
  var body: some View {
    HStack() {
      RoundedImageViewsStroked(systemName: "arrow.counterclockwise")
      Spacer()
      RoundedImageViewsFilled(systemName: "list.dash")
    }
  }
}

struct NumberView: View {
  var title: String
  var text: String
  
  var body: some View {
    VStack(spacing: 5) {
      LabelText(title: title)
      RoundedRectTextView(text: text)
    }
  }
}

struct BottomView: View {
  @Binding var game: Game
  
  var body: some View {
    HStack() {
      NumberView(title: "Score", text: String(game.score))
      Spacer()
      NumberView(title: "Round", text: String(game.round))
    }
  }
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundView(game: .constant(Game()))
  }
}