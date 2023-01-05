
zcat=$(which zcat)

if [ -z $zcat ]; then
    echo "You need to install zcat"
    exit 1
fi

DESKTOP_DIRECTORY=""

if [ -d "/home/$USER/Scrivania" ]; then
    DESKTOP_DIRECTORY="/home/$USER/Scrivania"
elif [ -d "/home/$USER/Desktop" ]; then
    DESKTOP_DIRECTORY="/home/$USER/Desktop"
else
    echo "I can't find your home direcotry"
    exit 1
fi

echo "Load config.gz into $DESKTOP_DIRECTORY directory..."

if [ -f "/proc/config.gz" ]; then
    echo "Take config from /proc/config.gz..."
    zcat /proc/config.gz > $DESKTOP_DIRECTORY/config.txt
elif [ -f "/boot/config-$(uname -r)" ]; then
    echo "Take config from /boot/config-$(uname -r)..."
    cat /boot/config-$(uname -r) > $DESKTOP_DIRECTORY/config.txt
else
    echo "Kernel config not found! Abort."
    exit 1
fi

sleep 1

echo "Take info for possibile clean-up..."

modprobed=$(which modprobed-db)

if [ -z $modprobed ]; then
    echo "You need to install modprobed-db. Check for your distro."
    exit 1
fi

modprobed-db store > /dev/null
modprobed-db list > $DESKTOP_DIRECTORY/clean-up.txt

echo "Done. Bye."