#!/bin/bash
set +x
set -e
script_dir=$( cd ${BASH_SOURCE[0]%/*} ; echo "$PWD" )
cd "${script_dir}"

echo "################################################################################"
echo Testing unrar backend
lit -v --param unrarall_backend=unrar .

echo "################################################################################"
echo Testing 7z backend
lit -v --param unrarall_backend=7z .