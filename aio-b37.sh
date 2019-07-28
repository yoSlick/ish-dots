# Script by 404
# Made for build 35
CYAN='\033[0;36m'
GREEN='\033[1;32m'
NC='\033[0m'
printf "${CYAN}Updating Alpine . . .\n${NC}"
apk update
apk upgrade
printf "${CYAN}Installing SSH, Python 3 and nano because why not\n${NC}"
apk add openssh-client openssh-server python3 nano
printf "${CYAN}Applying SSH Client fix by tbodt\n${NC}"
mknod /dev/tty c 5 0
printf "${CYAN}Configure SSH Server to listen when started\n${NC}"
printf "${CYAN}Also allowing root login . . .\n${NC}"
sed "s/#Port 22/Port 22/1;s/#ListenAddress 0.0.0.0/ListenAddress 0.0.0.0/1;s/#ListenAddress ::/ListenAddress ::/1;s/#PermitRootLogin prohibit-password/PermitRootLogin yes/1;" /etc/ssh/sshd_config > /etc/ssh/sshd_config_new
rm /etc/ssh/sshd_config
mv /etc/ssh/sshd_config_new /etc/ssh/sshd_config
printf "${CYAN}Generating SSH host keys . . .\n${NC}"
printf "${CYAN}This will take a moment please wait . . .\n${NC}"
ssh-keygen -A
printf "${CYAN}Making nano a bit more colorful\n${NC}"
printf "${CYAN}Edit this script for more nanorc.\n${NC}"
# Get more nanorc files: https://opensource.apple.com/source/nano/nano-5/nano/doc/syntax/
wget https://opensource.apple.com/source/nano/nano-5/nano/doc/syntax/python.nanorc -O /usr/share/nano/python.nanorc
wget https://opensource.apple.com/source/nano/nano-5/nano/doc/syntax/sh.nanorc -O /usr/share/nano/sh.nanorc
wget https://opensource.apple.com/source/nano/nano-5/nano/doc/syntax/html.nanorc -O /usr/share/nano/html.nanorc
touch ~/.nanorc
echo include /usr/share/nano/python.nanorc >> ~/.nanorc
echo include /usr/share/nano/sh.nanorc >> ~/.nanorc
echo include /usr/share/nano/html.nanorc >> ~/.nanorc
printf "${CYAN}Creating launch scripts so you can later on launch ssh-server or a http server\n${NC}"
printf "${CYAN}Info: There is no SSL support for the development server of PHP.\n${NC}"
mkdir ~/www
touch ~/http-server.sh
touch ~/ssh-server.sh
echo echo Starting SSH Server... >> ~/ssh-server.sh
echo /usr/sbin/sshd >> ~/ssh-server.sh
echo echo Starting http server >> ~/http-server.sh
echo cd www >> ~/http-server.sh
echo python3 -m http.server >> ~/http-server.sh
echo cd.. >> ~/http-server.sh
printf "${CYAN}Info: SSH Server is broken in build 35, but SCP works\n${NC}"
printf "${CYAN}Change root password\n${NC}"
passwd
printf "${GREEN}Info: Done! Keep in mind that the SSH Server only works with the app in the foreground.\n${NC}"
