// Created by Cal Stephens on 12/9/22.
// Copyright © 2022 Airbnb Inc. All rights reserved.

import Lottie
import XCTest

@MainActor
final class LottieTests: XCTestCase {
  func testCanImportLottie() {
    let animationView: Any? = LottieAnimationView()
    XCTAssertNotNil(animationView)
  }
}
