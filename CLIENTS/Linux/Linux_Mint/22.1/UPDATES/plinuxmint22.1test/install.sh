#! /bin/sh


if [ -f /etc/settings/updates/updated_date.cfg ]; then
 sudo rm -f /etc/settings/updates/updated_date.cfg
fi

if [ -f /etc/settings/updates/plinuxmint22.1test.ud ]; then
 exit 1
fi


pushd . > /dev/null

cd /mnt/git/posupdatesrv/CLIENTS/Linux/Linux_Mint/22.1/UPDATES

# CODE GOES HERE...

echo "Public Linux Mint 22.1 Test..."

# CODE ENDS HERE...

sudo mkdir -p /etc/settings/updates
sudo date > /etc/settings/updates/plinuxmint22.1test.ud
sudo date > /etc/settings/updates/updated_date.cfg
sudo date >> /etc/settings/updates/update.log

popd > /dev/null

exit 0
