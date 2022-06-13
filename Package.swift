// swift-tools-version: 5.7

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 10/06/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

/// Test package which uses the Versionator plugin to embed a version
/// number into the executable in a way that's accessible at runtime.

import PackageDescription

let package = Package(
    name: "VersionatorTest",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        .executable(
            name: "VersionatorTest",
            targets: ["VersionatorTest"]),
    ],
    dependencies: [
        .package(url: "https://github.com/elegantchaos/Versionator.git", branch: "main"),
    ],
    targets: [
        .executableTarget(
            name: "VersionatorTest",
            dependencies: [],
            plugins: [
                .plugin(name: "VersionatorPlugin", package: "Versionator")
            ]
        )
    ]
)
