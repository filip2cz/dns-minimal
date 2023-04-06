echo "This is setup for dns-minimal, minimal dns server image created by Filip Komarek"
echo "https://github.com/filip2cz/dns-minimal/"
echo
echo "This is created for Alpine Linux only!"
read -r "Press ENTER for continue, CTRL+C for exit"
echo

echo "Downloading tutorials and .profile aliases ..."
if [ -f "~/.profile" ]; then
    echo "~/.profile exists, skiping."
else 
    echo curl https://raw.githubusercontent.com/filip2cz/dns-minimal/main/files/resources/profile > ~/.profile
    curl https://raw.githubusercontent.com/filip2cz/dns-minimal/main/files/resources/profile > ~/.profile
fi

curl https://raw.githubusercontent.com/filip2cz/dns-minimal/main/files/resources/ip-settings.txt > ~/ip-settings.txt
curl https://raw.githubusercontent.com/filip2cz/dns-minimal/main/files/resources/dns-settings.txt > ~/dns-settings.txt

echo "Installing dnsmasq..."
apk add dnsmasq

echo "Downloading dnsmasq.conf..."
if [ -f "/etc/dnsmasq.conf" ]; then
    echo "/etc/dnsmasq.conf exists, renaming to /etc/dnsmasq.conf.old"
    mv /etc/dnsmasq.conf /etc/dnsmasq.conf.old
fi
curl https://raw.githubusercontent.com/filip2cz/dns-minimal/main/files/resources/dnsmasq.conf > /etc/dnsmasq.conf
