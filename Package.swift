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
    ],
    targets: [
        .binaryTarget(
            name: "Test5576SDK",
            url: "https://firebasestorage.googleapis.com/v0/b/chatapplication-bceea.appspot.com/o/Test5576SDK.xcframework.zip?alt=media&token=167de813-6e78-45fa-ac0c-87b86fd0e3ae&_gl=1*kg9dc*_ga*MTUxNzU4NzA2OS4xNjQwNTExNzU5*_ga_CW55HF8NVT*MTY5NzExNzY4NC4zLjEuMTY5NzExNzcxMS4zMy4wLjA.",
            checksum: "17bfd2b28323d98a0080836ed0d172be4c3622abb6984fc85a31b1eac957edfe"
        ),
        .target(
            name: "Test5576Target",
            dependencies: [
                .target(name: "Test5576SDK"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                .product(name: "SocketIO", package: "SocketIO"),
                .product(name: "SwiftyBeaver", package: "SwiftyBeaver"),
                .product(name: "MMWormhole", package: "MMWormhole"),
            ],
            path: "Framework/Dependency",
            exclude: []
        ),
    ]
)
