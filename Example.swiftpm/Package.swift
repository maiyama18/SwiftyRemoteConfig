// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Example",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Example",
            targets: ["AppModule"],
            bundleIdentifier: "com.github.fumitoito.Example",
            teamIdentifier: "K489QY5CFD",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    dependencies: [
        .package(name: "SwiftyRemoteConfig", path: "../")
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                .productItem(name: "SwiftyRemoteConfig", package: "SwiftyRemoteConfig", condition: nil)
            ],
            path: "."
        )
    ]
)
