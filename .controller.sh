#!/bin/bash
clear
while [ 1 ]; do

    if [ "$( cat .gp.txt )" == 'n' ]; then
	echo 'd' > .gp.txt
	break;
    fi
    
    
    read -sn1 -t 1 com
    
    if [ "$com" == 'a' ] || [ "$com" == 'w' ] || [ "$com" == 's' ] || [ "$com" == 'd' ] || [ "$com" == 'q' ] || [ "$com" == 'r' ] || [ "$com" == 'p' ]; then
	echo $com > .gp.txt

	if [ "$com" == 'w' ]; then
	    echo -en "\033[45m "
	fi
	if [ "$com" == 'a' ]; then
	    echo -en "\033[42m "
	fi
	if [ "$com" == 's' ]; then
	    echo -en "\033[43m "
	fi
	if [ "$com" == 'd' ]; then
	    echo -en "\033[44m "
	fi

	if [ "$com" == 'r' ]; then
	    echo -en "\033[41m "
	    clear
	    sleep 0.5
	    echo -en "\033[44m "
	    clear
	    echo 'd' > .gp.txt
	    com='d'
	fi

	if [ "$com" == 'q' ]; then
	    echo -en "\033[41m "
	    clear
	    sleep 6
	    break;
	fi

	if [ "$com" == 'p' ]; then
	    echo -en "\033[47m "
	    clear
	    read -sn1 hello
	    echo 'd' > .gp.txt
	    echo -en "\033[44m "
	    clear
	fi
	
	clear
    fi

    
done
