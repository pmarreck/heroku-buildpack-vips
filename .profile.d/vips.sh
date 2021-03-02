echo "Setting environment values:"
# set a default LANG if it does not exist in the environment
export LANG=${LANG:-en_US.UTF-8}
# export PATH="$PATH:$HOME/vendor/vips/bin"
# export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$HOME/vendor/vips/lib/pkgconfig"
# export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/vendor/vips/lib"
export VIPS_VERSION=${VIPS_VERSION:-8.10.5}
export VIPSHOME=/usr/local
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$VIPSHOME/lib
export PATH=$PATH:$VIPSHOME/bin
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$VIPSHOME/lib/pkgconfig
export MANPATH=$MANPATH:$VIPSHOME/man

echo "LANG=$LANG"
echo "VIPS_VERSION=$VIPS_VERSION"
echo "VIPSHOME=$VIPSHOME"
echo "LD_LIBRARY_PATH=$LD_LIBRARY_PATH"
echo "PKG_CONFIG_PATH=$PKG_CONFIG_PATH"
echo "MANPATH=$MANPATH"
echo "PATH=$PATH"
