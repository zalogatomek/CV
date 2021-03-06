// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CVDomain",
    products: [
        .library(
            name: "CVDomain",
            targets: ["CVDomain"]),
    ],
    targets: [
        .target(
            name: "CVDomain",
            dependencies: []),
        .testTarget(
            name: "CVDomainTests",
            dependencies: ["CVDomain"]),
    ]
)
