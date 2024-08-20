// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "libsnark",
    products: [
        .library(
            name: "libsnark",
            targets: ["libsnark"])
    ],
    targets: [
        .target(
            name: "libsnark",
            swiftSettings: [.interoperabilityMode(.Cxx)])
    ]
)