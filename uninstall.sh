#! /bin/bash
function nounistall
{
	echo -e "Are you sure you want to uninstall Hak9 Framework? "
	sleep 2
	exit
}
echo -e "Do you really want to uninstall the Hak9 Framework from your system?(y/n)(Enter=no): "
read CHUN
if [ "$CHUN" = "y" ]
then
	echo -e "Preparing to uninstall Hak9 Framework. Confirm to uninstall"
	read CHCHUN
	if [ "$CHCHUN" = "y" ]
	then
		echo -e "Uninstalling Hak9 Framework on your system"
		sleep 4
		rm -r /bin/hak9
		echo -e "Uninstall complete."
		sleep 1
		echo -e "You now need to manually delete the Hak9 folder from your /root/ directory..."
		sleep 2
		echo -e "Press any key to exit..."
		read
		exit
	else
		nounistall
	fi
else
	nounistall
fi
