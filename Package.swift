// swift-tools-version: 5.8

import PackageDescription
import class Foundation.ProcessInfo

let package = Package(
    name: "swift-x509",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        .executable(name: "SwiftX509", targets: ["SwiftX509"]),
    ],
    targets: [
        .executableTarget(
            name: "SwiftX509",
            exclude: ["CMakeLists.txt"]
        ),
    ]
)

if ProcessInfo.processInfo.environment["SWIFTCI_USE_LOCAL_DEPS"] == nil {
    package.dependencies += [
    ]
}
