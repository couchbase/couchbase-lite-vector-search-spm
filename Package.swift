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
            url: "https://packages.couchbase.com/releases/couchbase-lite-vector-search/1.0.0-beta.2/couchbase-lite-vector-search_xcframework_1.0.0-beta.2.zip",
            checksum: "b8aa089fc60fb9063ee7aa8c57493dd487b4c9a1440f99d06024ba20ff33e6c0"
        )
    ]
) 
