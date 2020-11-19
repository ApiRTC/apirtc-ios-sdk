# ApiRTC iOS SDK Reference

ApiRTC cloud-based WebRTC API are built for web and mobile developers. Empower you website with real-time text, audio and video interaction by leveraging our javascript library (compatible Node.js or Angular.js) or use our plugins for your mobile apps. 

[Apizee](https://apizee.com/) takes care of browser compatibility, security and NAT traversal issues for you.

# Requirements

Requires Swift 5+ and Xcode 12+

# Installation

## Swift Package Manager

Install package via Xcode

OR

Add the project as a dependency to your Package.swift:

```
// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "YourApp",
    products: [
        .library(
            name: "YourApp",
            targets: ["YourApp"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apizee/ApiRTC-iOS-SDK", from: "0.0.6"),
    ],
    targets: [
        .target(
            name: "YourApp",
            dependencies: []),
        .testTarget(
            name: "YourAppTests",
            dependencies: ["YourApp"]),
    ]
)
```
