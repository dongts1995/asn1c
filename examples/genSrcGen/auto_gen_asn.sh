#!/bin/sh

asc_asn="lscMoAscAsn.asn"
lsc_asn="lscMoLscAsn.asn"
asn1c="asn1c"
output="src-gen/asn1"
path="path/asn1c"
fix_asn1c="fix_asn1"
cp="cp"
rm="rm"

####### main ######


"$rm" -rf  "$output"
mkdir -p  "$output"

"$asn1c"  -fcompound-names -Werror  -no-gen-OER   "$lsc_asn" "$asc_asn"  -D "$output"


