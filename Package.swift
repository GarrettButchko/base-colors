// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BaseColors",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "BaseColors",
            targets: ["BaseColors"]
        )
    ],
    targets: [
        .target(
            name: "BaseColors",
            resources: [.process("Resources")]
        )
    ]
)
