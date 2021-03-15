// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Objects",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "Objects",
            targets: ["Objects"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/vmanot/SwiftDB.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "Objects",
            dependencies: [
                "SwiftDB"
            ],
            path: "Sources"
        ),
    ]
)
