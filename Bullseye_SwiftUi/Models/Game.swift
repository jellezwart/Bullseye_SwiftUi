//
//  Game.swift
//  Bullseye_SwiftUi
//
//  Created by Jelle Zwart on 17/03/2023.
//

import Foundation

struct Game {
  var target: Int = Int.random(in: 1...100)
  var score: Int = 0
  var round: Int = 1
  
  func points(sliderValue: Int) -> Int {
    return 999
  }
  
}