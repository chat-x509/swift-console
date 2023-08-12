// swift-tools-version: 5.8

import PackageDescription
import class Foundation.ProcessInfo

let package = Package(
    name: "chat-x509",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        .executable(name: "chat-x509", targets: ["swift-console"]),
    ],
    targets: [
        .executableTarget(
            name: "swift-console",
            exclude: ["CMakeLists.txt"]
        ),
    ]
)

if ProcessInfo.processInfo.environment["SWIFTCI_USE_LOCAL_DEPS"] == nil {
    package.dependencies += [
        .package(url: "https://github.com/apple/swift-certificates.git", from: "0.6.0"),
    ]
}
