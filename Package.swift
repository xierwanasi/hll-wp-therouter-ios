// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "hll-wp-therouter-ios",
    platforms: [.iOS(.v13), .macOS(.v10_15), .tvOS(.v13), .watchOS(.v6)],
    products: [
       .library(
            name: "TheRouter",
            targets: ["TheRouter"]),
    ],
    targets: [
        .target(
            name: "DynamicMapping",
            publicHeadersPath: "include"
        ),
        .target(
            name: "TheRouter",
            dependencies: ["DynamicMapping"]
            ),
        .testTarget(
            name: "TheRouterTests",
            dependencies: ["TheRouter"]
            )
    ]
)
