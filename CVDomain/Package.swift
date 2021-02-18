// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CVDomain",
    products: [
        .library(name: "CVDomain", targets: ["CVDomain"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0"))
    ],
    targets: [
        .target(
            name: "CVDomain",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
            ]
        ),
        .testTarget(
            name: "CVDomainTests",
            dependencies: ["CVDomain"]
        )
    ]
)
