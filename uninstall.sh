# A uninstall script of Bksys program

# root privilege
if [ ${UID} -ne 0 ]; then
    echo -e "\e[1;31mNon root user. Please run as root.\e[0m"
    exit 1
fi
rm -rf /usr/share/bksys
rm /usr/bin/bksys
sed -i '$d' /etc/profile
sed -i '$d' /etc/profile