// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.9.4-99-gef5d08583"

let package = Package(
    name: "BNBFaceTrackerLite",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBFaceTrackerLite",
            targets: [
                "BNBFaceTrackerLite",
                "BNBFaceTrackerLite_BNBSdkCore",
                "BNBFaceTrackerLite_BNBEffectPlayer",
                "BNBFaceTrackerLite_BNBScripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBFaceTrackerLite",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.9.4-99-gef5d08583/BNBFaceTrackerLite.zip",
            checksum: "18bbb369615e9e48d6c92c53f8ded21b7828eb76bd290e98a4b5f20fb3df9bc1"
        ),
        .target(
            name: "BNBFaceTrackerLite_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBFaceTrackerLite_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBFaceTrackerLite_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
