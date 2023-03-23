//
//  Shapes.swift
//  Bullseye_SwiftUi
//
//  Created by Jelle Zwart on 22/03/2023.
//

import SwiftUI

struct Shapes: View {
  var body: some View {
    VStack{
      Circle()
        .strokeBorder(Color.blue, lineWidth: 20)
        .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
        .background(Color.green)
    }
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
