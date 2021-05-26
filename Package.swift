// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleMobileAds",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "GoogleMobileAds",
            targets: ["GoogleMobileAdsExport"]
        ),
    ],
    dependencies: [
        .package(
            name: "GoogleAppMeasurement",
            url: "https://github.com/google/GoogleAppMeasurement.git",
            "7.0.0"..<"9.0.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMobileAds",
            url: "https://raw.githubusercontent.com/trdahn/GoogleMobileAds/binaries/GoogleMobileAds-8.5.0.zip",
            checksum: "6177feafc4bc08f307572a57059accc47dcf56a23b1bac43bd362caf5cd2bde8"
        ),
        .binaryTarget(
            name: "UserMessagingPlatform",
            url: "https://raw.githubusercontent.com/trdahn/GoogleMobileAds/binaries/GoogleUserMessagingPlatform-2.0.0.zip",
            checksum: "0e588a02e77adb952683393faccf4de13789035af82535ae73cc787cb5045120"
        ),
        .target(
            name: "GoogleMobileAdsExport",
            dependencies: [
                "GoogleMobileAds",
                "GoogleAppMeasurement",
                "UserMessagingPlatform",
            ],
            path: "Sources/GoogleMobileAds",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("MessageUI"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Security"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("AdSupport"),
                .linkedFramework("JavaScriptCore"),
                .linkedFramework("SafariServices"),
                .linkedFramework("WebKit"),
                .linkedLibrary("z"),
                .linkedLibrary("sqlite3"),
            ]
        ),
    ]
)
