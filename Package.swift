// swift-tools-version: 6.0

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
    .macOS(.v12)
  ],
  products: [
    .executable(
      name: "VersionatorTest",
      targets: ["VersionatorTest"]),
    .executable(
      name: "VersionatorTestWithResources",
      targets: ["VersionatorTestWithResources"]),
  ],
  dependencies: [
    .package(url: "https://github.com/elegantchaos/Versionator.git", from: "2.0.2")
  ],
  targets: [
    .executableTarget(
      name: "VersionatorTest",
      dependencies: [],
      plugins: [
        .plugin(name: "VersionatorPlugin", package: "Versionator")
      ]
    ),
    .executableTarget(
      name: "VersionatorTestWithResources",
      dependencies: [],
      resources: [
        .copy("Resources/Something.txt")
      ],
      plugins: [
        .plugin(name: "VersionatorPlugin", package: "Versionator")
      ]
    ),

  ]
)
