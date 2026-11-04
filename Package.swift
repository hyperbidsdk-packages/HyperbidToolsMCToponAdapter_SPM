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
        .package(url: "https://github.com/hyperbidsdk-packages/HyperbidToolsMCSDK_SPM.git", from: "4.2.11"),
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", exact: "6.5.91")
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
            url: "https://topon-sdk-release.oss-cn-hangzhou.aliyuncs.com/MCSDK/iOS/v4.2.11/overseas/sdks/MCSDKToponAdapter-6.5.73.1.zip",
            checksum: "9c5312c72c193b85c2b1106ae0ab92a0bb1ecc111ab33f9ba52833ab3a60d013"
        )
    ]
)
