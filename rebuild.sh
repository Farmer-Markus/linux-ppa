#!/bin/bash

cd debian
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages
apt-ftparchive release . > Release

echo -e "\033[1;31mEnter email for updating repository!\033[0;38m"
read email

gpg --default-key $email -abs -o - Release > Release.gpg
gpg --default-key $email --clearsign -o - Release > InRelease

cd ..
git add -A
git commit -m update


echo -e "\033[1;31mPushing update onto github\033[0;38m"
git push -u origin HEAD:master
