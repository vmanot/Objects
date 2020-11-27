// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Objects",
    platforms: [
        .iOS("14.0"),
        .macOS("11.0"),
        .tvOS("14.0"),
        .watchOS("7.0")
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
