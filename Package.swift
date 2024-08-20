// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "libsnark",
    // To avoid linker warnings in macOS, make version 13 (or later, 
    // according to your needs), the minimum supported version:
    platforms: [.macOS(.v13)],
    products: [
        .library(
            name: "libsnark",
            targets: ["SwiftModule"]
        ),
    ],
    targets: [
        .target(
            name: "libsnark"
        ),
        .target(
            name: "SwiftModule",
            dependencies: ["libsnark"],
            // Specifying the path is superfluous as long as
            // the corresponding folder is called 'SwiftModule'
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
    ]
)