// swift-tools-version:5.6

import PackageDescription

let package = Package(
  name: "Lottie",
  platforms: [.iOS("11.0"), .macOS("10.11"), .tvOS("11.0")],
  products: [.library(name: "Lottie", targets: ["Lottie", "_LottieStub"])],
  targets: [
    .binaryTarget(
      name: "Lottie",
      url: "https://github.com/airbnb/lottie-ios/releases/download/4.3.1/Lottie.xcframework.zip",
      checksum: "730e72bd0c7cce97c6cf3f6f9dce523bf8cd2ea35236549a78cbafcc133f7435"),
    
    // Without at least one regular (non-binary) target, this package doesn't show up
    // in Xcode under "Frameworks, Libraries, and Embedded Content". That prevents
    // Lottie from being embedded in the app product, causing the app to crash when
    // ran on a physical device. As a workaround, we can include a stub target
    // with at least one source file.
    .target(name: "_LottieStub"),
    
    .testTarget(
      name: "LottieTests",
      dependencies: ["Lottie"],
      path: "Tests")
  ])
