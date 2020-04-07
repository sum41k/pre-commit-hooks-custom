#!/usr/bin/env bash
set -e

declare -a paths
index=0

for file_with_path in "$@"; do
  file_with_path="${file_with_path// /__REPLACED__SPACE__}"
  paths[index]=$(dirname "$file_with_path")
  let "index+=1"
done

for path_uniq in $(echo "${paths[@]}" | tr ' ' '\n' | sort -u); do
  path_uniq="${path_uniq//__REPLACED__SPACE__/ }"
  if [[ -n "$(find . -maxdepth 2 -name '*.tf' -print | awk -F / '{print $2}' | uniq)" ]] ; then
    terraform validate $path_uniq
  fi
done

if [[ "${error}" -ne 0 ]] ; then
  exit 1
fi
