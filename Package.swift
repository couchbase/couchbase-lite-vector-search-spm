// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CouchbaseLiteVectorSearch",
    platforms: [
        .macOS(.v10_14), .iOS(.v12)
    ],
    products: [
        .library(
            name: "CouchbaseLiteVectorSearch",
            targets: ["CouchbaseLiteVectorSearch"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteVectorSearch",
            url: "https://latestbuilds.service.couchbase.com/builds/latestbuilds/couchbase-lite-vector-search/1.0.0/22/couchbase-lite-vector-search-1.0.0-22-apple.zip",
            checksum: "e37fb2efbd2d4bc6a43e05cebbb92b5db12478ca09ed53f2d1df7cd685f59861"
        )
    ]
) 
