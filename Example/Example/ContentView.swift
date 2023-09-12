// Created by Cal Stephens on 9/12/23.
// Copyright © 2023 Airbnb Inc. All rights reserved.

import SwiftUI
import Lottie

struct ContentView: View {
  var body: some View {
    VStack {
      Spacer()
      Text("lottie-spm")
      Spacer()

      LottieView(animation: .named("LottieLogo1"))
        .play(loopMode: .loop)
    }
  }
}

#Preview {
    ContentView()
}
