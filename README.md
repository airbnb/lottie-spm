# Lottie for Swift Package Manager
[![SwiftPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/) [![License](https://img.shields.io/cocoapods/l/lottie-ios.svg?style=flat)](https://cocoapods.org/pods/lottie-ios) [![Platform](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fairbnb%2Flottie-spm%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/airbnb/lottie-spm) [![Swift Versions](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fairbnb%2Flottie-spm%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/airbnb/lottie-spm)

This repo provides Swift Package Manager support for [lottie-ios](https://github.com/airbnb/lottie-ios). 

### Installing Lottie

To install Lottie using [Swift Package Manager](https://github.com/apple/swift-package-manager) you can follow the [tutorial published by Apple](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app) using the URL for this repo with the current version:

1. In Xcode, select “File” → “Add Packages...”
1. Enter https://github.com/airbnb/lottie-spm.git

or you can add the following dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.2.0")
```

### Why is there a separate repo for Swift Package Manager support?

The main git repository for [lottie-ios](https://github.com/airbnb/lottie-ios) is somewhat large (300+ MB), and Swift Package Manager always downloads the full repository with all git history. This [lottie-spm](https://github.com/airbnb/lottie-spm) repo is much smaller (less than 500kb), so can be downloaded much more quickly.

Instead of downloading the full git history of Lottie and building it from source, this repo just contains a pointer to the precompiled XCFramework included in the [latest lottie-ios release](https://github.com/airbnb/lottie-ios/releases/latest) (typically ~8MB). If you prefer to include Lottie source directly your project, you can directly depend on the [`lottie-ios` repo](https://github.com/airbnb/lottie-ios) instead.

### Other Package Managers

Lottie is also available via Cocoapods, Carthage, and npm. You can also build Lottie directly from source, or manually integrate precompiled XCFrameworks into your project. More information is available in the main [lottie-ios](https://github.com/airbnb/lottie-ios#installing-lottie) repo.
