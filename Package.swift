// swift-tools-version:5.6

import PackageDescription

// TODO: What Xcode versions are able to consume this?
// Both versions use the exact same Swift version (5.9.2).
//#if compiler(>=5.9)
/// A precompiled XCFramework of the lottie-ios repo that was compiled with Xcode 15.2 / Swift 5.9.2.
let lottieXCFramework = Target.binaryTarget(
  name: "Lottie",
  path: "Lottie-vision-os-test-do-not-use.xcframework")

//#else
/// TODO: Update to Lottie 4.4.0
/// A precompiled XCFramework of the lottie-ios repo that was compiled with Xcode 14.1.
//let lottieXCFramework = Target.binaryTarget(
//      name: "Lottie",
//      url: "https://github.com/airbnb/lottie-ios/releases/download/4.3.4/Lottie.xcframework.zip",
//      checksum: "33c4efc87130f751e8a4bee1de5c557c6821566e05d0fa77cdcc1beae23858ca")
//#endif


let package = Package(
  name: "Lottie",
  platforms: [.iOS("11.0"), .macOS("10.11"), .tvOS("11.0"), .custom("visionOS", versionString: "1.0")],
  products: [.library(name: "Lottie", targets: ["Lottie", "_LottieStub"])],
  targets: [
    lottieXCFramework,
    
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
