

#!/bin/bash

echo "xian - a cool tool for immersive environments"

HOST=''
while getopts "h" opt
do
	case "$opt" in
		h)
			echo "hostarg provided " >&2
			HOST="-h";
			;;
	esac
done

if (python xian-networking.py $HOST)
then 
	echo "xian network shut down";
else
	echo "Checking for required python packages";

	if !(pip list | grep -F pythonosc)
	then
		echo "python-osc not installed";
		echo "installing python-osc";
		pip3 install python-osc
	fi
fi
