// swift-tools-version: 5.7

import PackageDescription
import class Foundation.ProcessInfo

let package = Package(
    name: "chat-x509",
    platforms: [ .macOS(.v10_15), .iOS(.v13) ],
    products: [ .executable(name: "chat-x509", targets: ["SwiftConsole"]), ],
    targets: [
      .executableTarget(
         name: "SwiftConsole",
         dependencies: [
            .product(name: "Crypto", package: "swift-crypto"),
            .product(name: "_CryptoExtras", package: "swift-crypto"),
            .product(name: "SwiftASN1", package: "swift-asn1"),
         ]),
    ]
)

if ProcessInfo.processInfo.environment["SWIFTCI_USE_LOCAL_DEPS"] == nil {
    package.dependencies += [
        .package(url: "https://github.com/apple/swift-crypto.git", from: "2.6.0"),
        .package(url: "https://github.com/apple/swift-asn1.git", from: "0.8.0"),
    ]
}
