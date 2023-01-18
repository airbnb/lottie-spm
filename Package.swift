// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "Lottie",
  platforms: [.iOS("11.0"), .macOS("10.10"), .tvOS("11.0")],
  products: [.library(name: "Lottie", targets: ["Lottie"])],
  targets: [
    .binaryTarget(
      name: "Lottie",
      url: "https://github.com/airbnb/lottie-ios/releases/download/4.0.1/Lottie.xcframework.zip",
      checksum: "b6d8b0b81975d91965b8bb00cffb0eae4b3d94538b6950a90bc1366afd5d4239"),
    .testTarget(
      name: "LottieTests",
      dependencies: ["Lottie"],
      path: "Tests")
  ])
