# Lottie for Swift Package Manager
[![SwiftPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/) [![License](https://img.shields.io/cocoapods/l/lottie-ios.svg?style=flat)](https://cocoapods.org/pods/lottie-ios) [![Platform](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fairbnb%2Flottie-ios%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/airbnb/lottie-ios) [![Swift Versions](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fairbnb%2Flottie-ios%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/airbnb/lottie-ios)

**View documentation, FAQ, help, examples, and more at [airbnb.io/lottie](https://airbnb.io/lottie/)**

Lottie is a cross-platform library for iOS, macOS, tvOS, [Android](https://github.com/airbnb/lottie-android), and [Web](https://github.com/airbnb/lottie-web) that natively renders vector-based animations and art in realtime with minimal code.

Lottie loads and renders animations and vectors exported in the bodymovin JSON format. Bodymovin JSON can be created and exported from After Effects with [bodymovin](https://github.com/bodymovin/bodymovin), Sketch with [Lottie Sketch Export](https://github.com/buba447/Lottie-Sketch-Export), and from [Haiku](https://www.haiku.ai).

Designers can create **and ship** beautiful animations without an engineer painstakingly recreating them by hand.
Since the animation is backed by JSON they are extremely small in size but can be large in complexity!
Animations can be played, resized, looped, sped up, slowed down, reversed, and even interactively scrubbed.
Lottie can play or loop just a portion of the animation as well, the possibilities are endless!
Animations can even be ***changed at runtime*** in various ways! Change the color, position, or any keyframable value!

Here is just a small sampling of the power of Lottie

![Example1](https://github.com/airbnb/lottie-ios/raw/master/_Gifs/Examples1.gif)
![Example2](https://github.com/airbnb/lottie-ios/blob/master/_Gifs/Examples2.gif)

<img src="https://github.com/airbnb/lottie-ios/blob/master/_Gifs/Community%202_3.gif" />

![Example3](https://github.com/airbnb/lottie-ios/raw/master/_Gifs/Examples3.gif)

![Abcs](https://github.com/airbnb/lottie-ios/blob/master/_Gifs/Examples4.gif)

## Swift Package Manager support

This repo provides Swift Package Manager support for [lottie-ios](https://github.com/airbnb/lottie-ios). 

### Installing Lottie

To install Lottie using [Swift Package Manager](https://github.com/apple/swift-package-manager) you can follow the [tutorial published by Apple](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app) using the URL for this repo with the current version:

1. In Xcode, select “File” → “Add Packages...”
1. Enter https://github.com/airbnb/lottie-spm.git

or you can add the following dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.0.1")
```

### Why is there a separate repo for Swift Package Manager support?

The main git repository for [lottie-ios](https://github.com/airbnb/lottie-ios) is somewhat large (300+ MB), and Swift Package Manager always downloads the full repository with all git hsitory. This [lottie-spm](https://github.com/airbnb/lottie-spm) repo is much smaller (less than 500kb), so can be downloaded much more quickly. 

Instead of downloading the full git history of Lottie and building it from source, this repo just contains a pointer to the precompiled XCFramework included in the [latest lottie-ios release](https://github.com/airbnb/lottie-ios/releases/latest) (typically ~8MB). If you prefer to include Lottie source directly your project, you can directly depend on the [`lottie-ios` repo](https://github.com/airbnb/lottie-ios) instead.

### Other Package Managers

Lottie is also available via Cocoapods, Carthage, and npm. You can also build Lottie directly from source, or manually integrate precompiled XCFrameworks into your project. More information is available in the main [lottie-ios](https://github.com/airbnb/lottie-ios#installing-lottie) repo.
