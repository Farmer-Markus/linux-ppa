#!/bin/bash

dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages
apt-ftparchive release . > Release

echo "Enter email for updating repository!"
read email

gpg --default-key $email -abs -o - Release > Release.gpg
gpg --default-key $email --clearsign -o - Release > InRelease

git add -A
git commit -m update

echo "pushing update onto github"
git push -u origin HEAD:master
