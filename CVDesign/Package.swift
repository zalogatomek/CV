// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CVDesign",
    products: [
        .library(
            name: "CVDesign",
            targets: ["CVDesign"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CVDesign",
            dependencies: []),
        .testTarget(
            name: "CVDesignTests",
            dependencies: ["CVDesign"]),
    ]
)
