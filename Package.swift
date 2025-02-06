// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "TheSocialTool",
    platforms: [
        .iOS(.v14), // Adjust as needed
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "TheSocialTool",
            targets: ["TheSocialTool"]
        ),
    ],
    dependencies: [
        // Facebook iOS SDK
        .package(url: "https://github.com/facebook/facebook-ios-sdk", from: "16.0.0")
    ],
    targets: [
        .target(
            name: "TheSocialTool",
            dependencies: [
                .product(name: "FacebookLogin", package: "facebook-ios-sdk")
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "TheSocialToolTests",
            dependencies: ["TheSocialTool"],
            path: "Tests"
        )
    ]
)
