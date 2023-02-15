// Created by Cal Stephens on 2/1/23.
// Copyright © 2023 Airbnb Inc. All rights reserved.

import Cocoa
import Lottie

class ViewController: NSViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let animationView = LottieAnimationView(name: "LottieLogo1")
    animationView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(animationView)

    NSLayoutConstraint.activate([
      animationView.topAnchor.constraint(equalTo: view.topAnchor),
      animationView.leftAnchor.constraint(equalTo: view.leftAnchor),
      animationView.rightAnchor.constraint(equalTo: view.rightAnchor),
      animationView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
    ])

    animationView.loopMode = .loop
    animationView.play()
  }
  
}
