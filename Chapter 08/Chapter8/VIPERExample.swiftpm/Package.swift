// swift-tools-version: 5.8

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "VIPERExample",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "VIPERExample",
            targets: ["AppModule"],
            bundleIdentifier: "com.mdCorp.VIPERExample",
            teamIdentifier: "5FQCL3Q62P",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .clock),
            accentColor: .presetColor(.pink),
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
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)
