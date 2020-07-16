#!/usr/bin/env bash

set -e

echo -n "nobase_dist_pkgdata_DATA ="
find core classes languages packages lua-libraries -type f -name '*.lua' -printf ' %p'
find classes -type f -name '*.sil' -printf ' %p'

echo -ne "\nLUAMODULES ="
find lua_modules -type f -not -name '*~' -printf ' %p' ||:

echo -ne "\nLUAMODULESDIST ="
find lua_modules_dist -type f -not -name '*~' -printf ' %p' ||:

echo -ne "\nTESTSRCS ?="
find tests -maxdepth 1 -type f -name '*.sil' -printf ' %p'
find tests -maxdepth 1 -type f -name '*.xml' -printf ' %p'

echo -ne "\nTESTEXPECTS ?="
find tests -maxdepth 1 -type f -name '*.expected' -printf ' %p'

echo -ne "\nEXAMPLESSRCS ="
find examples -maxdepth 1 -type f -name '*.sil' -printf ' %p'
find examples/docbook -maxdepth 1 -type f -name '*.xml' -printf ' %p'