// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CVStatic",
    products: [
        .library(name: "CVStatic", targets: ["CVStatic"])
    ],
    dependencies: [
        .package(path: "CVDomain"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0"))
    ],
    targets: [
        .target(
            name: "CVStatic",
            dependencies: [
                "CVDomain",
                .product(name: "RxSwift", package: "RxSwift")
            ]
        ),
        .testTarget(
            name: "CVStaticTests",
            dependencies: ["CVStatic", "CVDomain"]
        )
    ]
)
