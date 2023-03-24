//
//  Shapes.swift
//  Bullseye_SwiftUi
//
//  Created by Jelle Zwart on 22/03/2023.
//

import SwiftUI

struct Shapes: View {
  @State private var wideShapes = true
  var body: some View {
    VStack{
      if !wideShapes {
        Circle()
          .strokeBorder(Color.blue, lineWidth: 20)
          .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
          .background(Color.green)
          .transition(.scale)
      }
      RoundedRectangle(cornerRadius: 20)
        .fill(Color.blue)
        .frame(width: wideShapes ? 200 : 100, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
      //        .animation(.easeInOut, value: wideShapes)
      Capsule()
        .fill(Color.blue)
        .frame(width: wideShapes ? 200 : 100, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
      Ellipse()
        .fill(Color.blue)
        .frame(width: wideShapes ? 200 : 100, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
      Button("Animate!") {
        withAnimation {
          wideShapes.toggle()
        }
      }
    }
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
