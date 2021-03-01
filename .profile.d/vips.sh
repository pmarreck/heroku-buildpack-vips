# set a default LANG if it does not exist in the environment
export LANG=${LANG:-en_US.UTF-8}
export PATH="$PATH:$HOME/vendor/vips/bin"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$HOME/vendor/vips/lib/pkgconfig"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/vendor/vips/lib"
export VIPS_VERSION=${VIPS_VERSION:-8.10.5}
