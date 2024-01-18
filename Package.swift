// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  platforms: [.iOS(.v12), .macOS(.v12), .macCatalyst(.v13)],
  products: [
    .library(
        name: "Tun2SocksKit",
        targets: ["Tun2SocksKit"]
    )
  ],
  targets: [
    .target(
        name: "Tun2SocksKit",
        dependencies: ["Tun2SocksKitC", "HevSocks5Tunnel"]
    ),
    .target(
        name: "Tun2SocksKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "HevSocks5Tunnel",
        url: "https://github.com/signallabsoftware/Tun2SocksKit/releases/download/Tun2SocksKit2.2.0/HevSocks5Tunnel.xcframework.zip",
        checksum: "ac4b05ac24cafe6a3e02cd9b5ce70bcda34dc15841db50430157cc1a1605162a"
    )
  ]
)
