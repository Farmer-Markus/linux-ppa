My personal apt repository. <br />

To add ppa to your system run following commands:
`curl -s --compressed "https://Farmer-Markus.github.io/linux-ppa/debian/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/farmer-markus-ppa-repo.gpg >/dev/null` <br />
`sudo curl -s --compressed -o /etc/apt/sources.list.d/deb.list "https://Farmer-Markus.github.io/linux-ppa/debian/deb.list"` <br />
`sudo apt update` <br />
You should be able to install packages from this repository. <br />
