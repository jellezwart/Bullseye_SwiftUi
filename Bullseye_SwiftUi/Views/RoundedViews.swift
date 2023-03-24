//
//  RoundedViews.swift
//  Bullseye_SwiftUi
//
//  Created by Jelle Zwart on 22/03/2023.
//

import SwiftUI

struct RoundedImageViewsStroked: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .overlay(Circle()
        .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth))
  }
}

struct RoundedImageViewsFilled: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .background(
        Circle()
          .fill(Color("ButtonFilledBackgroundColor")))
  }
}

struct RoundedRectTextView: View {
  var text: String
  
  var body: some View {
    Text(text)
      .kerning(-0.2)
      .bold()
      .font(.title3)
      .frame(width: Constants.General.roundedRectViewWidth, height: Constants.General.roundedRectViewHeight)
      .foregroundColor(Color("TextColor"))
      .overlay(
        RoundedRectangle(cornerRadius: Constants.General.roundedRectCornerRadius)
          .stroke(lineWidth: Constants.General.strokeWidth)
          .foregroundColor(Color("ButtonStrokeColor"))
      )
  }
}

struct PreviewView: View {
  var body: some View {
    VStack(spacing:10) {
      RoundedImageViewsFilled(systemName: "arrow.counterclockwise")
      RoundedImageViewsStroked(systemName: "list.dash")
      RoundedRectTextView(text: "999")
    }
  }
}

struct RoundedViews_Previews: PreviewProvider {
  static var previews: some View {
    PreviewView()
    PreviewView()
      .preferredColorScheme(.dark)
    
  }
}
