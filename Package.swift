// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Test5576_iOS",
    defaultLocalization: "en",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "Test5576SDK_iOS",
            targets: ["Test5576Target"]
        ),
    ],
    dependencies: [
        .package(
            name: "SwiftyJSON",
            url: "https://github.com/SwiftyJSON/SwiftyJSON.git",
            from: "4.0.0"
        ),
        .package(
            name: "SocketIO",
            url: "https://github.com/socketio/socket.io-client-swift.git", 
           from: "16.1.0"
        ),
        .package(
            name: "SwiftyBeaver",
            url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", 
           .upToNextMajor(from: "2.0.0")
        ),
        .package(
            name: "MMWormhole",
            url: "https://github.com/JioMeet/MMWormhole.git",
            from: "2.1.0"
        ),
        .package(
            name: "JioMeetRtcEngine_iOS",
            url: "https://github.com/JioMeet/JioMeet-rtc-engine-ios.git",
            "3.7.2"..<"3.7.3"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "Test5576SDK",
            url: "https://firebasestorage.googleapis.com/v0/b/chatapplication-bceea.appspot.com/o/0.0.2%2FTest5576SDK.xcframework.zip?alt=media&token=4537271c-4d85-4f4a-bc13-34a0502f6bef&_gl=1*a0skwq*_ga*MTUxNzU4NzA2OS4xNjQwNTExNzU5*_ga_CW55HF8NVT*MTY5NzE4Mjg2NC40LjEuMTY5NzE4Mjk5My40Ni4wLjA.",
            checksum: "8b9b5641dfe3e2ce8d22ba86b055ebd19ad4e349d0ee3dcc6dc3a3be83e9edad"
        ),
        .target(
            name: "Test5576Target",
            dependencies: [
                .target(name: "Test5576SDK"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                .product(name: "SocketIO", package: "SocketIO"),
                .product(name: "SwiftyBeaver", package: "SwiftyBeaver"),
                .product(name: "MMWormhole", package: "MMWormhole"),
                .product(name: "RTC", package: "JioMeetRtcEngine_iOS"),
                .product(name: "RTM", package: "JioMeetRtcEngine_iOS"),
            ],
            path: "Framework/Dependency",
            exclude: []
        ),
    ]
)
