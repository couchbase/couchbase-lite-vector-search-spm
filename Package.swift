// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CouchbaseLiteVectorSearch",
    platforms: [
        .iOS(.v15), .macOS(.v13)
    ],
    products: [
        .library(
            name: "CouchbaseLiteVectorSearch",
            targets: ["CouchbaseLiteVectorSearch"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteVectorSearch",
            url: "https://packages.couchbase.com/releases/couchbase-lite-vector-search/2.0.0/couchbase-lite-vector-search_xcframework_2.0.0.zip",
            checksum: "f7d9b4d9bc1481f4f60bb761830cbbf657e0e2334b0ca16c7ff0b93794d71979"
        )
    ]
) 
