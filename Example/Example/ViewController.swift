// Created by Cal Stephens on 12/9/22.
// Copyright © 2022 Airbnb Inc. All rights reserved.

import UIKit
import Lottie

class ViewController: UIViewController {

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
