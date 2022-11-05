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


#
# Start compression kernel for send via telegram.
# Remove git history and config (this uses a lot of space).
#
rm -rf .git/
zip -r ../kernel.zip ./*

curl -v -F chat_id="-1001832180909" -F document=@"$(pwd)/../kernel.zip" \
            https://api.telegram.org/bot"${1}"/sendDocument