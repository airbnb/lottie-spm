// swift-tools-version:5.6

import PackageDescription

#if compiler(>=5.9)
/// A precompiled XCFramework of the lottie-ios repo that was compiled with Xcode 15.2 / Swift 5.9.
/// This XCFramework can be used by Xcode 15.0 and later.
let lottieXCFramework = Target.binaryTarget(
  name: "Lottie",
  url: "https://github.com/airbnb/lottie-ios/releases/download/4.4.2/Lottie-Xcode-15.2.xcframework.zip",
  checksum: "0d88ba1674ade6bf34230917ce2692bb3947c13c9e989ff3859a3ecc25f869b4")
#else
/// A precompiled XCFramework of the lottie-ios repo that was compiled with Xcode 14.1 / Swift 5.7.
/// This XCFramework bundle doesn't support visionOS, but does support Xcode 14.
let lottieXCFramework = Target.binaryTarget(
  name: "Lottie",
  url: "https://github.com/airbnb/lottie-ios/releases/download/4.4.2/Lottie-Xcode-14.1.xcframework.zip",
  checksum: "8dbe94c6c589b72744d716e918bc2096ce28495616d76065f60c370f600691c4")
#endif

let package = Package(
  name: "Lottie",
  platforms: [.iOS("13.0"), .macOS("10.15"), .tvOS("13.0"), .custom("visionOS", versionString: "1.0")],
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
      path: "Tests")
  ])

// Emit an error on Linux, so Swift Package Manager's platform support detection doesn't say this package supports Linux
// https://github.com/airbnb/swift/discussions/197#discussioncomment-4055303
#if os(Linux)
#error("Linux is currently not supported")
#endif
