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
            url: "https://packages.couchbase.com/releases/couchbase-lite-vector-search/1.0.0-beta.1/couchbase-lite-vector-search_xcframework_1.0.0-beta.1.zip",
            checksum: "03a39dd148814e0b02c85ff57d113bdc951bee0efe97110c444eaa0ef83c5b80"
        )
    ]
) 
