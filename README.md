# Lottie for Swift Package Manager
[![SwiftPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/) [![License](https://img.shields.io/cocoapods/l/lottie-ios.svg?style=flat)](https://cocoapods.org/pods/lottie-ios) [![Swift Versions](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fairbnb%2Flottie-spm%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/airbnb/lottie-spm)

This repo provides Swift Package Manager support for [lottie-ios](https://github.com/airbnb/lottie-ios). 

### Installing Lottie

To install Lottie using [Swift Package Manager](https://github.com/apple/swift-package-manager) you can follow the [tutorial published by Apple](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app) using the URL for this repo with the current version:

1. In Xcode, select “File” → “Add Packages...”
1. Enter https://github.com/airbnb/lottie-spm.git

or you can add the following dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.5.1")
```

### Why is there a separate repo for Swift Package Manager support?

The main git repository for [lottie-ios](https://github.com/airbnb/lottie-ios) is somewhat large (300+ MB), and Swift Package Manager always downloads the full repository with all git history. This [lottie-spm](https://github.com/airbnb/lottie-spm) repo is much smaller (less than 500kb), so can be downloaded much more quickly.

Instead of downloading the full git history of Lottie and building it from source, this repo just contains a pointer to the precompiled XCFramework included in the [latest lottie-ios release](https://github.com/airbnb/lottie-ios/releases/latest) (typically ~8MB). If you prefer to include Lottie source directly your project, you can directly depend on the [`lottie-ios` repo](https://github.com/airbnb/lottie-ios) instead.

### Other Package Managers

Lottie is also available via Cocoapods, Carthage, and npm. You can also build Lottie directly from source, or manually integrate precompiled XCFrameworks into your project. More information is available in the main [lottie-ios](https://github.com/airbnb/lottie-ios#installing-lottie) repo.

### Swift Version Support

Lottie supports Swift / Xcode versions back to the minimum version that is permitted by Apple for submissions to the App Store. You can see the most up-to-date information for which Swift versions Lottie supports on [Swift Package Index](https://swiftpackageindex.com/airbnb/lottie-ios):

[![Swift Versions](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fairbnb%2Flottie-ios%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/airbnb/lottie-ios)

### Privacy

Lottie does not collect any data. We provide this notice to help you fill out [App Privacy Details](https://developer.apple.com/app-store/app-privacy-details/). We additionally provide a [privacy manifest](https://github.com/airbnb/lottie-spm/blob/master/Sources/PrivacyInfo.xcprivacy) which can be included in your app.

When generating a privacy report, Xcode will automatically detect and use the privacy manifest included in the downloaded `Lottie.xcframework`. For convenience we also provide a copy of the privacy manifest [in this repo](https://github.com/airbnb/lottie-spm/blob/master/PrivacyInfo.xcprivacy).

### Security

We distribute XCFramework bundles for each release on [GitHub](https://github.com/airbnb/lottie-ios/releases/latest). In Lottie 4.4.0 and later, these XCFramework bundles include a [code signature](https://developer.apple.com/documentation/xcode/verifying-the-origin-of-your-xcframeworks). These bundles are self-signed under the name "Lottie iOS" and have the following fingerprint:

```
89 2F 1B 43 04 7B 50 53 8F 2F 46 EA D9 29 00 DD 3D 48 11 F358 21 78 C0 61 A5 FB 20 F1 11 CB 26
```

When using lottie-spm, the downloaded `Lottie.xframework` isn't visible in the project navigator. To validate the authenticity of a lottie-spm package, you can confirm that the `Package.swift` file references a binary XCFramework from https://github.com/airbnb/lottie-ios/releases. 
