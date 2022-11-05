# This script will be able to build linux kernel for x86
# Take from repository the right config for build

curl https://raw.githubusercontent.com/Peppe289/builder-linux/master/.config --output .config

#
# Start build
# 
CPU_CORE=$(nproc --all)
make -j${CPU_CORE}

#
# Compile modules and 
# create kernel Image
#
make modules
make bzImage
