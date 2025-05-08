#! /bin/sh


if [ -f /etc/settings/updates/updated_date.cfg ]; then
 sudo rm -f /etc/settings/updates/updated_date.cfg
fi

if [ -f /etc/settings/updates/palltest.ud ]; then
 exit 1
fi


pushd . > /dev/null

cd /mnt/git/posupdatesrv/CLIENTS/ALL/UPDATES

# CODE GOES HERE...

echo "Test of Public ALL..."

# CODE ENDS HERE...

sudo mkdir -p /etc/settings/updates
sudo date > /etc/settings/updates/palltest.ud
sudo date > /etc/settings/updates/updated_date.cfg
sudo date >> /etc/settings/updates/update.log

popd > /dev/null

exit 0
