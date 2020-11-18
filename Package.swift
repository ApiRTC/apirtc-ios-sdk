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
            url: "https://github.com/sachakh/WebRTC",
            .exact("1.0.2")
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
          checksum: "9a609b95fd2938f7f1521f2215b373b6eb0ba94c260d1aa640d7133e449ae7d2"
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
                "CocoaAsyncSocket",
                "RxSwift",
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "RxRelay", package: "RxSwift"),
                "WebRTC",
                "SocketIO"
            ],
            path: "Sources/ApiRTCTarget"
        )
    ]
)
