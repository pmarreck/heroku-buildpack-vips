#!/usr/bin/env bash

function indent() {
  c='s/^/       /'
  case $(uname) in
    Darwin) sed -l "$c";;
    *)      sed -u "$c";;
  esac
}

arrow() {
  sed -u 's/^/-----> /'
}

# Outputs log line
#
# Usage:
#
#     output_line "Cloning repository"
#
function output_line() {
  local spacing="      "
  echo "${spacing} $1"
}

# Outputs section heading
#
# Usage:
#
#     output_section "Application tasks"
#
function output_section() {
  local indentation="----->"
  echo "${indentation} $1"
}

function output_warning() {
  local spacing="      "
  echo -e "${spacing} \e[31m$1\e[0m"
}

function output_stderr() { 
  # Outputs to stderr in case it is inside a function so it does not
  # disturb the return value. Useful for debugging.
  echo "$@" 1>&2; 
}

function clean_vips_downloads() {
  local cache_path=$1
  rm -rf ${cache_path}/vips-*
}

# function vendor() {
#   binary="$1"
#   local_path="$2"

#   echo "Fetching $binary" | indent
#   mkdir -p $local_path
#   curl $binary -s -o - | tar xz -C $local_path -f -

#   if [ -d "$local_path/bin" ]; then
#     export PATH=$local_path/bin:$PATH
#   fi

#   if [ -d "$local_path/lib/pkgconfig" ]; then
#     # pkg-config should handle compiler options (if used)
#     export PKG_CONFIG_PATH="$local_path/lib/pkgconfig:$PKG_CONFIG_PATH"
#   fi

#   # standard paths
#   export CPPPATH="$local_path/include:$CPPPATH"
#   export CPATH="$local_path/include:$CPATH"
#   export LIBRARY_PATH="$local_path/lib:$LIBRARY_PATH"

#   export LD_LIBRARY_PATH="$local_path/lib:$LD_LIBRARY_PATH"
# }