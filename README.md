# Hyperbid - iOS TopOn Mediation Adapter

The HyperbidTools TopOn mediation adapter (`HyperbidToolsMCToponAdapter`) for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- Hyperbid iOS Core SDK (`HyperbidToolsMCSDK`) 4.2.11+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/hyperbidsdk-packages/HyperbidToolsMCToponAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `x.x.x`).
4. Add the `HyperbidToolsMCToponAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/hyperbidsdk-packages/HyperbidToolsMCToponAdapter_SPM.git",
        exact: "x.x.x"
    )
]
```

## Included dependencies

- [`HyperbidToolsMCSDK`](https://github.com/hyperbidsdk-packages/HyperbidToolsMCSDK_SPM) (>= 4.2.11)
- [`TPNiOS`](https://github.com/topon-packages/TPNiOS_SPM) (pinned to `6.5.91`)
