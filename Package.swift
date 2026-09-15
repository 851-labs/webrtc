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
      url: "https://github.com/851-labs/webrtc/releases/download/152.0.0-codevisor.1/WebRTC.xcframework.zip",
      checksum: "85cfef48d8a6508af9c645a6887a13ec0ba38a71316195a1d0d9c9c3f051f013"
    )
  ]
)
