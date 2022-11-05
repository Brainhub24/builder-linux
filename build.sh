# this script will be able to build linux kernel for x86

# take from repository the right config for build

#
# Start build
# 
CPU_CORE=$(nproc --all)
make -j${CPU_CORE}