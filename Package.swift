// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "JavaScriptCore",
    products: [
        .library(name: "SJavaScriptCore", targets: ["SJavaScriptCore"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/gipfelen/javascript.git",
            from: "1.0"),
        .package(
            url: "https://github.com/gipfelen/test.git",
            from: "1.0")
    ],
    targets: [
        .target(
            name: "CJavaScriptCore",
            dependencies: []),
        .target(
            name: "SJavaScriptCore",
            dependencies: ["CJavaScriptCore", "JavaScript"]),
        .testTarget(
            name: "SJavaScriptCoreTests",
            dependencies: ["Test", "SJavaScriptCore"]),
    ]
)
