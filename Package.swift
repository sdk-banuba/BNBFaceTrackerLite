// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1/BNBFaceTrackerLite.zip",
            checksum: "fe61b4ff578d7b4e9fa8a004dee89d9f6a9486c3a2e25e8ee09bed6ef32115a0"
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
