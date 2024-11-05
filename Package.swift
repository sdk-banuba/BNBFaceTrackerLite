// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-177-gd98bf09f0"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-177-gd98bf09f0/BNBFaceTrackerLite.zip",
            checksum: "9ad3c0f82d17d3a8abd134cef3a86599200b297d96b98afb954b1279274d38d1"
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
