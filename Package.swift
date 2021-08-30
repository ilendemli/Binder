// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Binder",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
        .library(name: "Binder", targets: ["Binder"])
    ],
    targets: [
        .target(name: "Binder", dependencies: [], path: "Sources"),
        .testTarget(name: "BinderTests", dependencies: ["Binder"])
    ]
)
