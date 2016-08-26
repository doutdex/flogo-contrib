#!/usr/bin/env bash
unset SCRIPT_ROOT
readonly SCRIPT_ROOT=$(
  unset CDPATH
  script_root=$(dirname "${BASH_SOURCE}")
  cd "${script_root}"
  pwd
)
source ${SCRIPT_ROOT}/scripts/init.sh
# Build flogo/flogo-web docker image
pushd ${BUILD_ROOT}
docker::build flogo/flogo-contrib
# docker::copy_tag_and_push flogo/flogo-contrib pdhar/flogo-contrib
popd