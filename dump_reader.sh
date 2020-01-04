#!/bin/bash
tput civis
clear
count=0
while [ 1 ]; do
    block=0
    tput cup 0 0
    echo '                                                                               '
    
    i=1
    while [ $i -le 21 ]; do

	upi=$(( $i * 4 - 5 ))

	if [ "$upi" -lt 0 ]; then
	    upi=0
	fi
	
	
	tput cup 0 $upi 
	if [ $upi -ne 79 ]; then
	    echo -en "\033[42m####\033[0m"
	fi

	sleep 0.005
	    
	tput cup $i 0
	test=$( head -n $i .dump_data/$count.txt | tail -n 1 )
	a=':'
	test2=${test//$/$a}
	b="M-BM-'"
	test3=${test2//$b/§}
	c='-'
	d="\033[0m "
	
	echo -e ' '${test3//$c/$d}

	i=$(( $i + 1 ))
    done
    
    tput cup 21 74
    echo -n '['$count'] '

    tput cup 0 0
    echo -e '                                                                               '
    
    read -sn1 com

    if [ "$com" == 'h' ]; then
	tput cup 0 1
	echo -en "\033[1;44mHELP\033[0m  \033[1;43mm:\033[0m next page, \033[1;43mn:\033[0m last page, \033[1;43mg:\033[0m Go to ??? page, \033[1;43ml:\033[0m Live Mode  "
	read -sn1 nothing
	block=1
    fi
    
    if [ "$com" == 'g' ]; then
	tput cup 0 1
	echo -en "\033[1mGo to page: \033[44m"
	read com
	echo -en "\033[0m"
	count=$(( $com + 1 ))
    fi
    
    
    if [ "$com" == 'm' ]; then
	count=$(( $count + 1 ))
    else
	if [ "$com" == 'l' ]; then
	    count=0
	    while [ 0 ]; do
		tput cup 0 0
		echo '                                                                               '
		
		i=1
		while [ $i -le 21 ]; do
	
		    upi=$(( $i * 4 - 5 ))
		    
		    if [ "$upi" -lt 0 ]; then
			upi=0
		    fi
		    
		    
		    tput cup 0 $upi 
		    if [ $upi -ne 79 ]; then
			echo -en "\033[42m####\033[0m"
		    fi
		    
		    sleep 0.005
		    
		    tput cup $i 0
		    test=$( head -n $i .dump_data/$count.txt | tail -n 1 )
		    a=':'
		    test2=${test//$/$a}
		    b="M-BM-'"
		    test3=${test2//$b/§}
		    c='-'
		    d="\033[0m "
		    
		    echo -e ' '${test3//$c/$d}
		    
		    i=$(( $i + 1 ))
		done
		
		tput cup 21 74
		echo '['$count']  '
		
		tput cup 0 0
		echo '                                                                               '
		
		roundp=$(( $count + 1 ))
		roundi=$( cat .dump_data/$roundp.txt 2>&1 )
		
		if [[ "$roundi" =~ "033" ]]; then
		    count=$(( $count + 1 ))
		fi
		     
	    done
	    
	else
	    if [ $block -ne 1 ]; then
		count=$(( $count - 1 ))
	    fi
	    
	fi
	
    fi

    
done
