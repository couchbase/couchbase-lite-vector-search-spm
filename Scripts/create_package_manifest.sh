#!/bin/sh

set -e

function usage() {
    echo "Usage: $0 <outdir> <version> [build num]"
    exit 1
}

if [ "$#" -lt 2 ]; then
    usage
fi

OUTDIR=${1}
VERSION=${2}
BLD_NUM=${3}

echo "Create Package.swift for CouchbaseLiteVectorSearch ..."

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
TEMPLATE_FILE="${SCRIPT_DIR}/../Package.template"

mkdir -p ${OUTDIR}
pushd "${OUTDIR}" > /dev/null

echo "VERSION: ${VERSION}"
if [ -z "$BLD_NUM" ]
then
    ZIP_FILENAME="couchbase-lite-vector-search-xcframework-${VERSION}.zip"
    ZIP_URL="https://packages.couchbase.com/releases/couchbase-lite-vector-search/${VERSION}/${ZIP_FILENAME}"
else
    echo "BUILD_NO: ${BLD_NUM}"
    ZIP_FILENAME="couchbase-lite-vector-search-${VERSION}-${BLD_NUM}-apple.zip"
    ZIP_URL="https://latestbuilds.service.couchbase.com/builds/latestbuilds/couchbase-lite-vector-search/${VERSION}/${BLD_NUM}/${ZIP_FILENAME}"
fi

echo "URL: ${ZIP_URL}"

curl -O ${ZIP_URL}

PRODUCT_NAME="CouchbaseLiteVectorSearch"
SWIFT_VERSION=`swift -version |  awk '{ print $4 }'`
CHECKSUM="12345"

function createPackageDotSwift {
eval "cat << EOF 
$(<${TEMPLATE_FILE}) 
EOF" 1> "Package.swift"
}

createPackageDotSwift
CHECKSUM=`swift package compute-checksum ${ZIP_FILENAME}`
echo -e "\nCHECKSUM: ${CHECKSUM}"
createPackageDotSwift

popd > /dev/null
