My personal apt repository.

curl -s --compressed "https://Farmer-Markus.github.io/linux-ppa/debian/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/farmer-markus-ppa-repo.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/deb.list "https://Farmer-Markus.github.io/linux-ppa/debian/deb.list"
sudo apt update
