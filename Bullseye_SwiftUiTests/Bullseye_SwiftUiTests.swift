//
//  Bullseye_SwiftUiTests.swift
//  Bullseye_SwiftUiTests
//
//  Created by Jelle Zwart on 17/03/2023.
//

import XCTest
@testable import Bullseye_SwiftUi

final class Bullseye_SwiftUiTests: XCTestCase {
  var game: Game!
  
  override func setUpWithError() throws {
    game = Game()
  }
  
  override func tearDownWithError() throws {
    game = nil
  }
  
  func testExample() throws {
    XCTAssertEqual(game.points(sliderValue: 50), 999)
  }
  
}
