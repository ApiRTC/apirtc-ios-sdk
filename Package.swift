// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ApiRTC",
    products: [
        .library(
            name: "ApiRTC",
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
          checksum: "18829c405a57aadc94109f6fec0516817321deb57fef5c1695856be8bc15613e"
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
