// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CouchbaseLiteVectorSearch",
    platforms: [
        .iOS(.v12), .macOS(.v12)
    ],
    products: [
        .library(
            name: "CouchbaseLiteVectorSearch",
            targets: ["CouchbaseLiteVectorSearch"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteVectorSearch",
            url: "https://packages.couchbase.com/releases/couchbase-lite-vector-search/1.0.0/couchbase-lite-vector-search_xcframework_1.0.0.zip",
            checksum: "abe1ff93881263d5c1eb9a47ed3b7ce603c795cba148fd3b5b00c24927717cef"
        )
    ]
) 
