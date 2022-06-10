// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VersionatorTest",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .executable(
            name: "VersionatorTest",
            targets: ["VersionatorTest"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(path: "../Versionator"),
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
