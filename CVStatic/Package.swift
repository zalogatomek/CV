// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CVStatic",
    products: [
        .library(
            name: "CVStatic",
            targets: ["CVStatic"]),
    ],
    dependencies: [
        .package(path: "CVDomain")
    ],
    targets: [
        .target(
            name: "CVStatic",
            dependencies: ["CVDomain"]),
        .testTarget(
            name: "CVStaticTests",
            dependencies: ["CVStatic", "CVDomain"]),
    ]
)
