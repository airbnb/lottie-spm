// swift-tools-version:6.0

import PackageDescription

/// A precompiled XCFramework of the lottie-ios repo that was compiled with Xcode 16.4.
let lottieXCFramework = Target.binaryTarget(
  name: "Lottie",
  url: "https://github.com/airbnb/lottie-ios/releases/download/4.6.0/Lottie.xcframework.zip",
  checksum: "45e1c5d7040654fe498f9bc6de99d88ae0092714fb9f424949850e1ad66217e4"
)

let package = Package(
  name: "Lottie",
  platforms: [.iOS("13.0"), .macOS("10.15"), .tvOS("13.0"), .visionOS("1.0")],
  products: [.library(name: "Lottie", targets: ["Lottie", "_LottieStub"])],
  targets: [
    lottieXCFramework,
    
    // Without at least one regular (non-binary) target, this package doesn't show up
    // in Xcode under "Frameworks, Libraries, and Embedded Content". That prevents
    // Lottie from being embedded in the app product, causing the app to crash when
    // ran on a physical device. As a workaround, we can include a stub target
    // with at least one source file.
    // https://github.com/apple/swift-package-manager/issues/6069
    .target(name: "_LottieStub"),
    
    .testTarget(
      name: "LottieTests",
      dependencies: ["Lottie"],
      path: "Tests"
    ),
  ]
)
