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
      .frame(width: 56, height: 56)
  }
}

struct RoundedImageViewsFilled: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: 56, height: 56)
  }
}

struct PreviewView: View {
  var body: some View {
    VStack(spacing:10) {
      RoundedImageViewsFilled(systemName: "arrow.counterclockwise")
      RoundedImageViewsStroked(systemName: "list.dash")
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
