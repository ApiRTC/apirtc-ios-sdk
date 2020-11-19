// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ApiRTC-iOS-SDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "ApiRTC-iOS-SDK",
            targets: ["ApiRTCTarget"]),
    ],
    dependencies: [
        .package(
            name: "SocketIO",
            url: "https://github.com/socketio/socket.io-client-swift",
            .exact("15.2.0")
        ),
        .package(
            url: "https://github.com/robbiehanson/CocoaAsyncSocket",
            .exact("7.6.4")
        ),
        .package(
            url: "https://github.com/ReactiveX/RxSwift",
            .exact("6.0.0-rc.1")
        )
    ],
    targets: [
        .binaryTarget(
          name: "ApiRTCSDK",
          url: "https://download.apizee.com/ios/sdk/ApiRTCSDK.xcframework.zip",
          checksum: "0528ced542d9938bc68397048fd9f3eea1eb96286206ae56005f152b2e1260e6"
        ),
        .binaryTarget(
          name: "WebRTC",
          url: "https://download.apizee.com/ios/sdk/WebRTC.xcframework.zip",
          checksum: "cc43c102e62d6e7c7d174ff85ec39306793150fc0501745e814cb2da9373a88a"
        ),
        .target(
            name: "ApiRTCTarget",
            dependencies: [
                .target(name: "ApiRTCSDK", condition: .when(platforms: [.iOS])),
                .target(name: "WebRTC", condition: .when(platforms: [.iOS])),
                "CocoaAsyncSocket",
                "RxSwift",
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "RxRelay", package: "RxSwift"),
                "SocketIO"
            ],
            path: "Sources/ApiRTCTarget"
        )
    ]
)
