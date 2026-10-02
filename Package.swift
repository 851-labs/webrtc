// swift-tools-version:5.9
import PackageDescription

// Codevisor's source-built WebRTC binary (milestone M152). Built by
// https://github.com/851-labs/codevisor/blob/main/scripts/build-webrtc.mjs from the pinned
// WebRTC revision and toolchain recorded in the release's manifest.json.
let package = Package(
  name: "WebRTC",
  platforms: [.iOS(.v17), .macOS(.v14)],
  products: [.library(name: "WebRTC", targets: ["WebRTC"])],
  targets: [
    .binaryTarget(
      name: "WebRTC",
      url: "https://github.com/851-labs/webrtc/releases/download/152.0.0-codevisor.2/WebRTC.xcframework.zip",
      checksum: "0ae622a4f9a377ffc85e544ed38f378af54ea1ae40ca72830bb1c9d78016bcf4"
    )
  ]
)
