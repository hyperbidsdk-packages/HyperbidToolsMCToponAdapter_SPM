// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 Hyperbid. All rights reserved.

import PackageDescription

let package = Package(
    name: "HyperbidToolsMCToponAdapter",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "HyperbidToolsMCToponAdapter",
            targets: ["HyperbidToolsMCToponAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/hyperbidsdk-packages/HyperbidToolsMCSDK_SPM.git", from: "4.2.12"),
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", exact: "6.5.86")
    ],
    targets: [
        .target(
            name: "HyperbidToolsMCToponAdapterTarget",
            dependencies: [
                "HyperbidToolsMCToponAdapterBinary",
                .product(name: "HyperbidToolsMCSDK", package: "HyperbidToolsMCSDK_SPM"),
                .product(name: "TPNiOS", package: "TPNiOS_SPM")
            ],
            path: "Sources/HyperbidToolsMCToponAdapterWrapper"
        ),
        .binaryTarget(
            name: "HyperbidToolsMCToponAdapterBinary",
            url: "https://topon-sdk-release.oss-cn-hangzhou.aliyuncs.com/MCSDK/iOS/v4.2.12/overseas/sdks/MCSDKToponAdapter-605.86.0.zip",
            checksum: "83d480b3b978acfe03a2132127c42131c2ba723c405a58cb9fe77fa7d1b090f3"
        )
    ]
)
