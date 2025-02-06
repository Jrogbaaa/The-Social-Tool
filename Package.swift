// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "TheSocialTool",
    platforms: [
        .iOS(.v14),  // Adjust to your needs
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
        .package(url: "https://github.com/facebook/facebook-ios-sdk", exact: "16.0.0") // Ensures correct resolution
    ],
    targets: [
        .target(
            name: "TheSocialTool",
            dependencies: [
                .product(name: "FacebookLogin", package: "facebook-ios-sdk"),
                .product(name: "FBSDKCoreKit", package: "facebook-ios-sdk")
            ],
            path: "Sources/TheSocialTool" // Ensure this path exists!
        ),
        .testTarget(
            name: "TheSocialToolTests",
            dependencies: ["TheSocialTool"],
            path: "Tests/TheSocialToolTests"
        )
    ]
)

