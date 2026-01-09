#! /bin/bash
clear
printf '\033]2;Hak9 INSTALLER\a'

echo -e ""
echo -e "	888                 888       .d8888b.\e[1;33mv4.0.0\e[0m" 
echo -e "	888                 888      d88P  Y88b$CE"   
echo -e "	888         8888b.  888  888 888    888$CE"
echo -e "	8888888888    888b  888 .88P Y88b. d888$CE"                
echo -e "	888    888  .d88888 888888      Y88P888$CE"
echo -e "	888    888 888  888 888 888b Y88b  d88P$CE"
echo -e "       888    888 8888888  888  888  'Y8888P  $CE"     
echo -e ""
echo -e "\e[1;33mBy Ships2024\e[0m"
echo -e "Visit us on github:"
echo -e "==> \e[1;33mhttps://github.com/Ships2024\e[0m"                                                           
echo -e "==> \e[1;33mHak9 Framework\e[0m"
echo -e "Press \e[1;33many key\e[0m to install Hak9"
read -n 1
clear
apt-get update -y
apt-get -y install gnome-terminal
clear
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$DIR" != "/root/hak9" ]]
then
	echo -e "You didn't follow the github's install instructions.Hak9 will try to do it for you..."
	sleep 4
	if [[ -d /root/hak9 ]]
	then
		rm -r /root/hak9
	fi
	mkdir /root/hak9
	cp -r "$DIR"/* /root/hak9
	chmod +x /root/hak9/install.sh
	gnome-terminal -- "bash /root/hak9/install.sh"
fi
echo -e "Setting up folders..."
sleep 1
echo -e "Installing Framework"
sleep 2
chmod +x /root/hak9/hak/hak1
chmod +x /root/hak9/hak/hak2
chmod +x /root/hak9/hak/hak3
chmod +x /root/hak9/hak/hak31
chmod +x /root/hak9/bin/hak9
chmod +x /root/hak9/hak/hak4
chmod +x /root/hak9/hak/hak41
chmod +x /root/hak9/hak/hak42
chmod +x /root/hak9/hak/hak43
chmod +x /root/hak9/ls/l131.sh
chmod +x /root/hak9/ls/l132.sh
chmod +x /root/hak9/ls/l133.sh
chmod +x /root/hak9/uninstall.sh
clear
echo -e "Copying script to /bin/hak9"
sleep 2
mkdir /bin/hak9
cd /root/hak9
cp /root/hak9/bin/hak9 /bin/hak9
cp /root/hak9/hak/hak1 /bin/hak9
cp /root/hak9/hak/hak2 /bin/hak9
cp /root/hak9/hak/hak3 /bin/hak9
cp /root/hak9/hak/hak31 /bin/hak9
cp /root/hak9/hak/hak4 /bin/hak9
cp /root/hak9/hak/hak41 /bin/hak9
cp /root/hak9/hak/hak42 /bin/hak9
cp /root/hak9/hak/hak43 /bin/hak9
clear
#required for gui
apt-get -y install ncurses-dev
clear
if [[ ! -d /root/handshakes ]]
then
	mkdir /root/handshakes
	echo -e "Made /root/handshake directory"
else
	echo -e "/root/handshakes directory detected- Good."
fi
if [[ ! -d /root/wordlists ]]
then
	mkdir /root/wordlists
	echo -e "Made /root/wordlists directory"
else
	echo -e "/root/wordlists directory detected- Good."
fi
while true
do
clear
echo -e "Are you \e[1;33mu\e[0mpdating or \e[1;33mi\e[0mnstalling the Framwork?(\e[1;33mu\e[0m/\e[1;33mi\e[0m): "
echo -e "Lets Install the Framework."
read UORI
if [[ "$UORI" = "u" ]]
then 
	clear
	echo -e "Lets update and install the Framework again!"
	sleep 3
	break
elif [[ "$UORI" = "i" ]]
then
	clear
	BASHCHECK=$(cat ~/.bashrc | grep "bin/hak9")
	if [[ "$BASHCHECK" != "i" ]]
	then
		echo -e "Hak9 Framework has been successfully installed"
		sleep 3
	fi
	echo -e "Adding Hak9 to PATH so you can access it from anywhere"
	sleep 1



	export PATH=/bin/hak9:$PATH
	sleep 2
	echo "export PATH=/bin/hak9:$PATH" >> ~/.bashrc
	sleep 2
	echo "export PATH=/bin/hak9:$PATH" >> ~/.zshrc
	clear
	break
fi
done
clear
echo -e "Added Hak9 to Path"
sleep 1
clear
echo -e "Open a NEW terminal and type 'hak9' to launch framework"
sleep  4
gnome-terminal -- hak9
exit
