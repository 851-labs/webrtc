# WebRTC for Codevisor

Prebuilt `WebRTC.xcframework` (macOS arm64/x86_64, iOS arm64, iOS Simulator arm64/x86_64) built from
Google's WebRTC source by [Codevisor's pinned recipe](https://github.com/851-labs/codevisor/blob/main/scripts/build-webrtc.mjs).

Each release carries the framework archive, `manifest.json` (source and depot_tools revisions,
toolchain versions, GN arguments, archive SHA-256), `revisions.txt`, the GN arguments per
architecture, and the generated third-party notices for macOS and iOS.

```swift
.package(url: "https://github.com/851-labs/webrtc.git", exact: "152.0.0-codevisor.2")
```

WebRTC is licensed under the BSD license in `LICENSE`; the third-party notices for the bundled
dependencies are attached to every release.
