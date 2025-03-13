// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "ReactNativeKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ReactNativeKit",
            targets: ["ReactNativeKit-Release"]
        ),
        .library(
            name: "ReactNativeDevKit",
            targets: ["ReactNativeKit-Debug"]
        )
    ],
    targets: [
        .binaryTarget(name: "ReactNativeKit-Debug", url: "https://github.com/serjooo/ios-rn-prebuilt/releases/download/0.2.0/ReactNativeKit-Debug.xcframework.zip", checksum: "1adcbe4f06b290cc86a498476637e28d511cdfedc1861a578a74c05fa79198b0"),
        .binaryTarget(name: "ReactNativeKit-Release", url: "https://github.com/serjooo/ios-rn-prebuilt/releases/download/0.2.0/ReactNativeKit-Release.xcframework.zip", checksum: "02f8c9e5363c3882586b13176ac92a67bde6a5b3b863df46028f4c426ce65848"),
        
    ]
)
