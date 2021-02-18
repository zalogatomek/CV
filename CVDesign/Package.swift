// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CVDesign",
    products: [
        .library(name: "CVDesign", targets: ["CVDesign"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CVDesign",
            dependencies: []
        ),
        .testTarget(
            name: "CVDesignTests",
            dependencies: ["CVDesign"]
        )
    ]
)
