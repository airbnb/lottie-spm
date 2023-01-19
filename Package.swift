// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "Lottie",
  platforms: [.iOS("11.0"), .macOS("10.10"), .tvOS("11.0")],
  products: [.library(name: "Lottie", targets: ["Lottie"])],
  targets: [
    .binaryTarget(
      name: "Lottie",
      url: "https://github.com/airbnb/lottie-ios/releases/download/4.1.0/Lottie.xcframework.zip",
      checksum: "e954f5bfc5049196593c59c6eb21321016ffaba4417e9b4ece2a6a9eb54baa9a"),
    .testTarget(
      name: "LottieTests",
      dependencies: ["Lottie"],
      path: "Tests")
  ])
