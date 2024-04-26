// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-40-gb99e5d381"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-40-gb99e5d381/BNBFaceTrackerLite.zip",
            checksum: "1665681ade836143416e2e6a75fc8585b74ac9ae094810b27605506c05f55ac7"
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
