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
            name: "Alamofire",
            url: "https://github.com/Alamofire/Alamofire.git",
            .upToNextMajor(from: "5.8.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "Test5576SDK",
            url: "https://firebasestorage.googleapis.com/v0/b/chatapplication-bceea.appspot.com/o/Test5576SDK.xcframework.zip?alt=media&token=6986ccb5-fe96-4665-83a1-ef00bc25257c&_gl=1*mxype2*_ga*MTUxNzU4NzA2OS4xNjQwNTExNzU5*_ga_CW55HF8NVT*MTY5NzAzMTg0Mi4yLjEuMTY5NzAzMjMxMi42MC4wLjA.",
            checksum: "62b02e945d1dc6cc0d84b9f3e2c3ab778be0a56636fb88ec9d90262550ea03eb"
        ),
        .target(
            name: "Test5576Target",
            dependencies: [
                .target(name: "Test5576SDK"),
                .product(name: "Alamofire", package: "Alamofire"),
            ],
            path: "Framework/Dependency",
            exclude: []
        ),
    ]
)
