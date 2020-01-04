#!/bin/bash

down=0

echo 'n' > .gp.txt

sleep 1
echo 'd' > .gp.txt
xfce4-terminal --title="CONTROLLER" --geometry 1x1 --hide-menubar -e="bash .controller.sh" &

while [ 1 ]; do

dump=''

tput civis

#FUUUUUUUUUUUNCTION TIIIIIIIME

height () {
    top=$1
    left=$2
    height=$(( $3 + $top ))
    
    while [ $top -lt $height ]; do xyc='x'$top'y'$left; if [ "${!xyc}" != '0' ] && [ "${!xyc}" != '1' ] && [ "${!xyc}" != '2' ] && [ "${!xyc}" != '3' ]; then eval 'x'$top'y'$left='+'; fi; top=$(( $top + 1 )); done
    
}

xwidth () {
    top=$1
    left=$2
    width=$(( $3 + $left ))
    
    while [ $left -lt $width ]; do xyc='x'$top'y'$left; if [ "${!xyc}" != '0' ] && [ "${!xyc}" != '1' ] && [ "${!xyc}" != '2' ] && [ "${!xyc}" != '3' ]; then eval 'x'$top'y'$left='+'; fi; left=$(( $left + 1 )); done
    
}



#END

clear

x=1
while [ $x -le 20 ]; do
    y=1
    while [ $y -le 78 ]; do
	xyc='x'$x'y'$y
	eval x${x}y${y}='X'
	y=$(( $y + 1 ))
    done
    x=$(( $x + 1 ))
done


x11y20='§'

gohome () {
    if [ "$1" == 'zero' ]; then
	eval 'x'$zero_posx'y'$zero_posy='+'
	eval zero_posx=15
	eval zero_posy=44
    fi

    if [ "$1" == 'one' ]; then
	eval 'x'$one_posx'y'$one_posy='+'
	eval one_posx=16
	eval one_posy=62
    fi

    if [ "$1" == 'two' ]; then
	eval 'x'$two_posx'y'$two_posy='+'
	eval two_posx=9
	eval two_posy=48
    fi

    if [ "$1" == 'three' ]; then
	eval 'x'$three_posx'y'$three_posy='+'
	eval three_posx=12
	eval three_posy=62
    fi

    if [ "$1" == 'four' ]; then
	eval 'x'$four_posx'y'$four_posy='+'
	eval four_posx=11
	eval four_posy=75
    fi
    
}



# SET FIGUREPOS = 0

# ZERO
zero_live=1

zero_hp=10

zero_posx=2
zero_posy=1

zero_oldpos='bla'

zero_dead=0
# ONE
one_live=1

one_hp=10

one_posx=2
one_posy=1

one_oldpos='bla'

one_dead=0
# TWO
two_live=1

two_hp=10

two_posx=2
two_posy=1

two_oldpos='bla'

two_dead=0
# THREE
three_live=1

three_hp=10

three_posx=2
three_posy=1

three_oldpos='bla'

three_dead=0
# FOUR
four_live=1

four_hp=10

four_posx=2
four_posy=1

four_oldpos='bla'

four_dead=0
# [ END ]

go=0

x=1
while [ $x -le 20 ]; do
    y=1
    while [ $y -le 78 ]; do
	eval 'oldx'$x'y'$y='#OXYC#'
	y=$(( $y + 1 ))
    done
    x=$(( $x + 1 ))
done

xwidth 2 2 34
    height 2 2 13
    height 2 5 12
    xwidth 7 2 22
    height 7 24 10
    xwidth 17 24 4
    height 2 28 16
    height 2 35 18
    xwidth 19 15 20
    height 9 15 11
    xwidth 9 15 6
    height 9 20 2
    xwidth 13 5 10
    xwidth 9 20 4
    xwidth 9 28 12
    height 9 39 7
    xwidth 15 2 37
    xwidth 4 5 22
    height 4 26 10

    ### NXT SITE

    height 4 49 1
    height 6 49 1
    xwidth 5 35 20
    xwidth 3 35 15
    xwidth 7 35 15
    height 5 55 6
    xwidth 10 42 14
    height 10 42 9
    xwidth 19 42 36
    height 10 77 10
    xwidth 10 57 20
    height 7 57 4
    xwidth 7 57 9
    xwidth 8 65 5
    xwidth 7 69 8
    height 3 76 5
    xwidth 3 69 7
    xwidth 2 65 5
    xwidth 3 57 9
    height 3 67 6
    height 4 57 2
    xwidth 5 57 19
    height 10 60 6
    xwidth 15 53 8
    height 12 53 4
    xwidth 12 46 7
    height 12 46 5
    xwidth 16 42 4
    height 13 48 6
    xwidth 17 48 29
    height 11 64 4
    height 11 73 4
    xwidth 15 64 10
    height 16 70 1
    height 16 67 1
    xwidth 13 61 4


	x=1
	while [ $x -le 20 ]; do
	    y=1
	    while [ $y -le 78 ]; do
		xyc='x'$x'y'$y
		if test ${!xyc} == '+'; then
		    monsterand=$(( $RANDOM % 50 ))
		    if [ $monsterand -eq 1 ]; then
			eval $xyc='M'
		    fi
		fi
		y=$(( $y + 1 ))
	    done
	    x=$(( $x + 1 ))
	done


    
round=0
    break=0
while [ $break -eq 0 ]; do

    eb=$( cat .gp.txt )

    if [ "$eb" == "q" ]; then
	echo 'd' > .gp.txt
	break=1
	down=1
    fi

    if [ "$eb" == "r" ]; then
	echo 'd' > .gp.txt
	break=1
    fi

    if [ "$eb" == "p" ]; then
	while [ "$( cat .gp.txt )" == "p" ]; do
	    nothing=1
	done
	echo 'd' > .gp.txt
    fi
    
    
    zero_gohome=0
    one_gohome=0
    two_gohome=0
    three_gohome=0
    four_gohome=0

    
    
    zero_xp1='x'$(( $zero_posx + 1 ))'y'$zero_posy
    zero_xp1_C="${!zero_xp1}"
    zero_yp1='x'$zero_posx'y'$(( $zero_posy + 1 ))
    zero_yp1_C="${!zero_yp1}"
    zero_xm1='x'$(( $zero_posx - 1 ))'y'$zero_posy
    zero_xm1_C="${!zero_xm1}"
    zero_ym1='x'$zero_posx'y'$(( $zero_posy - 1 ))
    zero_ym1_C="${!zero_ym1}"
    
    
    one_xp1='x'$(( $one_posx + 1 ))'y'$one_posy
    one_xp1_C="${!one_xp1}"
    one_yp1='x'$one_posx'y'$(( $one_posy + 1 ))
    one_yp1_C="${!one_yp1}"
    one_xm1='x'$(( $one_posx - 1 ))'y'$one_posy
    one_xm1_C="${!one_xm1}"
    one_ym1='x'$one_posx'y'$(( $one_posy - 1 ))
    one_ym1_C="${!one_ym1}"
    
    
    two_xp1='x'$(( $two_posx + 1 ))'y'$two_posy
    two_xp1_C="${!two_xp1}"
    two_yp1='x'$two_posx'y'$(( $two_posy + 1 ))
    two_yp1_C="${!two_yp1}"
    two_xm1='x'$(( $two_posx - 1 ))'y'$two_posy
    two_xm1_C="${!two_xm1}"
    two_ym1='x'$two_posx'y'$(( $two_posy - 1 ))
    two_ym1_C="${!two_ym1}"
    
    
    three_xp1='x'$(( $three_posx + 1 ))'y'$three_posy
    three_xp1_C="${!three_xp1}"
    three_yp1='x'$three_posx'y'$(( $three_posy + 1 ))
    three_yp1_C="${!three_yp1}"
    three_xm1='x'$(( $three_posx - 1 ))'y'$three_posy
    three_xm1_C="${!three_xm1}"
    three_ym1='x'$three_posx'y'$(( $three_posy - 1 ))
    three_ym1_C="${!three_ym1}"

    
    four_xp1='x'$(( $four_posx + 1 ))'y'$four_posy
    four_xp1_C="${!four_xp1}"
    four_yp1='x'$four_posx'y'$(( $four_posy + 1 ))
    four_yp1_C="${!four_yp1}"
    four_xm1='x'$(( $four_posx - 1 ))'y'$four_posy
    four_xm1_C="${!four_xm1}"
    four_ym1='x'$four_posx'y'$(( $four_posy - 1 ))
    four_ym1_C="${!four_ym1}"


    
    
    x2y1='K'
    
    

    if [ $zero_hp -gt 10 ]; then
	zero_hp=10
    fi
    if [ $one_hp -gt 10 ]; then
	one_hp=10
    fi
    if [ $two_hp -gt 10 ]; then
	two_hp=10
    fi
    if [ $three_hp -gt 10 ]; then
	three_hp=10
    fi
    if [ $four_hp -gt 10 ]; then
	four_hp=10
    fi

    
    
    x5y67='#'



    zero_hp_C=$zero_hp
    one_hp_C=$one_hp
    two_hp_C=$two_hp
    three_hp_C=$three_hp
    four_hp_C=$four_hp
        

    
    #    00000
    #   0     0
    #  0       0
    #  0       0
    #  0       0              
    #  0       0
    #   0     0
    #    00000 

    if [ $zero_hp -gt 0 ]; then
    
	zero_xp1='x'$(( $zero_posx + 1 ))'y'$zero_posy
	zero_yp1='x'$zero_posx'y'$(( $zero_posy + 1 ))
	
	zero_xm1='x'$(( $zero_posx - 1 ))'y'$zero_posy
	zero_ym1='x'$zero_posx'y'$(( $zero_posy - 1 ))

	
	if [ $go -eq 1 ]; then
	    zero_ooldpos='x'$zero_posx'y'$zero_posy
	fi
	
	zero_opt=0
	
	zero_oxp1=0
	zero_oyp1=0
	zero_oxm1=0
	zero_oym1=0
	
	
	if test "$zero_oldpos" != "bla"; then

	    
	    ### FREIE FELDER ERMITTELN
	    
	    if [ "${!zero_xp1}" == '+' ] && [ "$zero_oldpos" != "$zero_xp1" ]; then
		zero_opt=$(( $zero_opt + 1 ))
		zero_oxp1=1
	    fi
	    
	    if [ "${!zero_yp1}" == '+' ] && [ "$zero_oldpos" != "$zero_yp1" ]; then
		zero_opt=$(( $zero_opt + 1 ))
		zero_oyp1=1
	    fi
	    
	    if [ "${!zero_xm1}" == '+' ] && [ "$zero_oldpos" != "$zero_xm1" ]; then
		zero_opt=$(( $zero_opt + 1 ))
		zero_oxm1=1
	    fi
	    if [ "${!zero_ym1}" == '+' ] && [ "$zero_oldpos" != "$zero_ym1" ]; then
		zero_opt=$(( $zero_opt + 1 ))
		zero_oym1=1
	    fi	
	    
	    
	    rand=''
	    
	    block=0
	    block2=0

	    gp=$( cat .gp.txt )

	    if [ "$gp" == "" ]; then
		gp='d'
	    fi

	    
	    
	    #
	    #       OPTIONS DURCHTESTEN
	    #
	    if [ $zero_opt -eq 1 ]; then
		if [ $zero_oxp1 -eq 1 ]; then
		    zero_posx=$(( $zero_posx + 1 ))
		fi
		if [ $zero_oyp1 -eq 1 ]; then
		    zero_posy=$(( $zero_posy + 1 ))
		fi
		if [ $zero_oxm1 -eq 1 ]; then
		    zero_posx=$(( $zero_posx - 1 ))
		fi
		if [ $zero_oym1 -eq 1 ]; then
		    zero_posy=$(( $zero_posy - 1 ))
		fi
	    else
		if [ $zero_oxp1 -eq 1 ] && [ "$gp" == "s" ]; then
		    zero_posx=$(( $zero_posx + 1 ))
		elif [ $zero_oyp1 -eq 1 ] && [ "$gp" == "d" ]; then
		    zero_posy=$(( $zero_posy + 1 ))
		elif [ $zero_oxm1 -eq 1 ] && [ "$gp" == "w" ]; then
		    zero_posx=$(( $zero_posx - 1 ))
		elif [ $zero_oym1 -eq 1 ] && [ "$gp" == "a" ]; then
		    zero_posy=$(( $zero_posy - 1 ))
		fi
	    fi
	    
	    
	    if [ "${!zero_xp1}" == '@' ] && [ "$zero_oldpos" != "$zero_xp1" ]; then
		break=1
	    fi
	    if [ "${!zero_yp1}" == '@' ] && [ "$zero_oldpos" != "$zero_yp1" ]; then
		break=1
	    fi
	    if [ "${!zero_xm1}" == '@' ] && [ "$zero_oldpos" != "$zero_xm1" ]; then
		break=1
	    fi
	    if [ "${!zero_ym1}" == '@' ] && [ "$zero_oldpos" != "$zero_ym1" ]; then
		break=1
	    fi
	    
	    if [ "${!zero_xp1}" == '§' ] && [ "$zero_oldpos" != "$zero_xp1" ]; then
		zero_posx=2
		zero_posy=1
	    fi
	    if [ "${!zero_yp1}" == '§' ] && [ "$zero_oldpos" != "$zero_yp1" ]; then
		zero_posx=2
		zero_posy=1
	    fi
	    if [ "${!zero_xm1}" == '§' ] && [ "$zero_oldpos" != "$zero_xm1" ]; then
		zero_posx=2
		zero_posy=1
	    fi
	    if [ "${!zero_ym1}" == '§' ] && [ "$zero_oldpos" != "$zero_ym1" ]; then
		zero_posx=2
		zero_posy=1
	    fi
	    
	    if [ "${!zero_xp1}" == '#' ] && [ "$zero_oldpos" != "$zero_xp1" ]; then
		zero_hp=$(( $zero_hp + 1 ))
	    fi
	    if [ "${!zero_yp1}" == '#' ] && [ "$zero_oldpos" != "$zero_yp1" ]; then
		zero_hp=$(( $zero_hp + 1 ))
	    fi
	    if [ "${!zero_xm1}" == '#' ] && [ "$zero_oldpos" != "$zero_xm1" ]; then
		zero_hp=$(( $zero_hp + 1 ))
	    fi
	    if [ "${!zero_ym1}" == '#' ] && [ "$zero_oldpos" != "$zero_ym1" ]; then
		zero_hp=$(( $zero_hp + 1 ))
	    fi
	    
	    if [ "${!zero_xp1}" == 'M' ] && [ "$zero_oldpos" != "$zero_xp1" ]; then
		zero_hp=$(( $zero_hp - 2 ))
		eval $zero_xp1='+'
	    fi
	    if [ "${!zero_yp1}" == 'M' ] && [ "$zero_oldpos" != "$zero_yp1" ]; then
		zero_hp=$(( $zero_hp - 2 ))
		eval $zero_yp1='+'
	    fi
	    if [ "${!zero_xm1}" == 'M' ] && [ "$zero_oldpos" != "$zero_xm1" ]; then
		zero_hp=$(( $zero_hp - 2 ))
		eval $zero_xm1='+'
	    fi
	    if [ "${!zero_ym1}" == 'M' ] && [ "$zero_oldpos" != "$zero_ym1" ]; then
		zero_hp=$(( $zero_hp - 2 ))
		eval $zero_ym1='+'
	    fi

	    #                                KÄMPFE                                 #

	    if [ $round -ge 20 ]; then
		#ONE
		if [ "$zero_xp1_C" == '1' ]; then
		    if [ $zero_hp_C -gt $one_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		if [ "$zero_yp1_C" == '1' ]; then
		    if [ $zero_hp_C -gt $one_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		if [ "$zero_xm1_C" == '1' ]; then
		    if [ $zero_hp_C -gt $one_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		if [ "$zero_ym1_C" == '1' ]; then
		    if [ $zero_hp_C -gt $one_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		
		#TWO
		if [ "$zero_xp1_C" == '2' ]; then
		    if [ $zero_hp_C -gt $two_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		if [ "$zero_yp1_C" == '2' ]; then
		    if [ $zero_hp_C -gt $two_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		if [ "$zero_xm1_C" == '2' ]; then
		    if [ $zero_hp_C -gt $two_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		if [ "$zero_ym1_C" == '2' ]; then
		    if [ $zero_hp_C -gt $two_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		
		#THREE
		if [ "$zero_xp1_C" == '3' ]; then
		    if [ $zero_hp_C -gt $three_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		if [ "$zero_yp1_C" == '3' ]; then
		    if [ $zero_hp_C -gt $three_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		if [ "$zero_xm1_C" == '3' ]; then
		    if [ $zero_hp_C -gt $three_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		if [ "$zero_ym1_C" == '3' ]; then
		    if [ $zero_hp_C -gt $three_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi

		#FOUR
		if [ "$zero_xp1_C" == '4' ]; then
		    if [ $zero_hp_C -gt $four_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		if [ "$zero_yp1_C" == '4' ]; then
		    if [ $zero_hp_C -gt $four_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		if [ "$zero_xm1_C" == '4' ]; then
		    if [ $zero_hp_C -gt $four_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi
		if [ "$zero_ym1_C" == '4' ]; then
		    if [ $zero_hp_C -gt $four_hp_C ]; then
			zero_hp=$(( $zero_hp - 1 ))
		    else
			zero_hp=$(( $zero_hp - 4 ))
		    fi
		    zero_gohome=1
		fi	
	    fi


	    
	    #  
	    # ENDLICH FERTIG
	    #

	   
	fi

	
	if [ $go -eq 1 ]; then
	    zero_oldpos=$zero_ooldpos
	fi
	
	eval "$zero_oldpos"='+'    	
	eval 'x'$zero_posx'y'$zero_posy='0'
	
    else
	if [ $zero_dead -ne 1 ]; then
	    eval 'x'$zero_posx'y'$zero_posy='+'
	    zero_dead=1
	fi
    fi
    
    
    
    #
    #                                                       NEXT PERSON
    #
    




    #      11
    #     1 1
    #    1  1
    #   1   1
    #  1    1
    #       1
    #       1
    #       1


    
    if [ $one_hp -gt 0 ]; then
    
	one_xp1='x'$(( $one_posx + 1 ))'y'$one_posy
	one_yp1='x'$one_posx'y'$(( $one_posy + 1 ))
	
	one_xm1='x'$(( $one_posx - 1 ))'y'$one_posy
	one_ym1='x'$one_posx'y'$(( $one_posy - 1 ))

		
	if [ $go -eq 1 ]; then
	    one_ooldpos='x'$one_posx'y'$one_posy
	fi
	
	one_opt=0
	
	one_oxp1=0
	one_oyp1=0
	one_oxm1=0
	one_oym1=0
	
	
	if test "$one_oldpos" != "bla"; then
	    	    
	    ### FREIE FELDER ERMITTELN
	    
	    if [ "${!one_xp1}" == '+' ] && [ "$one_oldpos" != "$one_xp1" ]; then
		one_opt=$(( $one_opt + 1 ))
		one_oxp1=1
	    fi
	    
	    if [ "${!one_yp1}" == '+' ] && [ "$one_oldpos" != "$one_yp1" ]; then
		one_opt=$(( $one_opt + 1 ))
		one_oyp1=1
	    fi
	    
	    if [ "${!one_xm1}" == '+' ] && [ "$one_oldpos" != "$one_xm1" ]; then
		one_opt=$(( $one_opt + 1 ))
		one_oxm1=1
	    fi
	    if [ "${!one_ym1}" == '+' ] && [ "$one_oldpos" != "$one_ym1" ]; then
		one_opt=$(( $one_opt + 1 ))
		one_oym1=1
	    fi	
	    
	    
	    rand=''
	    
	    block=0
	    block2=0
	    
	    #
	    #       OPTIONS DURCHTESTEN
	    #
	    
	    if [ $one_opt -eq 1 ]; then
		if [ $one_oxp1 -eq 1 ]; then
		    one_posx=$(( $one_posx + 1 ))
		fi
		if [ $one_oyp1 -eq 1 ]; then
		    one_posy=$(( $one_posy + 1 ))
		fi
		if [ $one_oxm1 -eq 1 ]; then
		    one_posx=$(( $one_posx - 1 ))
		fi
		if [ $one_oym1 -eq 1 ]; then
		    one_posy=$(( $one_posy - 1 ))
		fi
		
	    elif [ $one_opt -eq 2 ]; then
		rand=$(( $RANDOM % 2 ))
		if [ $one_oxp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			one_posx=$(( $one_posx + 1 ))
			block=1
		    else
			rand=1
		    fi
		fi
		if [ $one_oyp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			one_posy=$(( $one_posy + 1 ))
		    else
			rand=1
		    fi
		    
		fi
		if [ $one_oxm1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			one_posx=$(( $one_posx - 1 ))
		    else
			rand=1
		    fi
		    
		fi
		if [ $one_oym1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			one_posy=$(( $one_posy - 1 ))
			block=1
		    else
			rand=1
		    fi
		fi
		
	    elif [ $one_opt -eq 3 ]; then
		rand=$(( $RANDOM % 3 ))

		if [ $one_oxp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			one_posx=$(( $one_posx + 1 ))
			block=1
		    else
			rand=$(( $RANDOM % 2 ))
			block2=1
		    fi
		fi
		if [ $one_oyp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			one_posy=$(( $one_posy + 1 ))
		    else
			if [ $block2 -ne 1 ]; then 
			    rand=$(( $RANDOM % 2 ))
			    block2=1
			else
			    rand=1
			fi
		    	
		    fi
		    
		fi
		if [ $one_oxm1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			one_posx=$(( $one_posx - 1 ))
		    else
			if [ $block2 -ne 1 ]; then 
			    rand=$(( $RANDOM % 2 ))
			    block2=1
			else
			    rand=1
			fi
		    fi
		    
		fi
		if [ $one_oym1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			one_posy=$(( $one_posy - 1 ))
			block=1
		    else
			if [ $block2 -ne 1 ]; then 
			    rand=$(( $RANDOM % 2 ))
			    block2=1
			else
			    rand=1
			fi
		    fi
		fi
		
	    fi

	    if [ "${!one_xp1}" == '@' ] && [ "$one_oldpos" != "$one_xp1" ]; then
		break=1
	    fi
	    if [ "${!one_yp1}" == '@' ] && [ "$one_oldpos" != "$one_yp1" ]; then
		break=1
	    fi
	    if [ "${!one_xm1}" == '@' ] && [ "$one_oldpos" != "$one_xm1" ]; then
		break=1
	    fi
	    if [ "${!one_ym1}" == '@' ] && [ "$one_oldpos" != "$one_ym1" ]; then
		break=1
	    fi

	    if [ "${!one_xp1}" == '§' ] && [ "$one_oldpos" != "$one_xp1" ]; then
		one_posx=2
		one_posy=1
	    fi
	    if [ "${!one_yp1}" == '§' ] && [ "$one_oldpos" != "$one_yp1" ]; then
		one_posx=2
		one_posy=1
	    fi
	    if [ "${!one_xm1}" == '§' ] && [ "$one_oldpos" != "$one_xm1" ]; then
		one_posx=2
		one_posy=1
	    fi
	    if [ "${!one_ym1}" == '§' ] && [ "$one_oldpos" != "$one_ym1" ]; then
		one_posx=2
		one_posy=1
	    fi
	    
	    if [ "${!one_xp1}" == '#' ] && [ "$one_oldpos" != "$one_xp1" ]; then
		one_hp=$(( $one_hp + 1 ))
	    fi
	    if [ "${!one_yp1}" == '#' ] && [ "$one_oldpos" != "$one_yp1" ]; then
		one_hp=$(( $one_hp + 1 ))
	    fi
	    if [ "${!one_xm1}" == '#' ] && [ "$one_oldpos" != "$one_xm1" ]; then
		one_hp=$(( $one_hp + 1 ))
	    fi
	    if [ "${!one_ym1}" == '#' ] && [ "$one_oldpos" != "$one_ym1" ]; then
		one_hp=$(( $one_hp + 1 ))
	    fi
	    
	    
	    if [ "${!one_xp1}" == 'M' ] && [ "$one_oldpos" != "$one_xp1" ]; then
		one_hp=$(( $one_hp - 2 ))
		eval $one_xp1='+'
	    fi
	    if [ "${!one_yp1}" == 'M' ] && [ "$one_oldpos" != "$one_yp1" ]; then
		one_hp=$(( $one_hp - 2 ))
		eval $one_yp1='+'
	    fi
	    if [ "${!one_xm1}" == 'M' ] && [ "$one_oldpos" != "$one_xm1" ]; then
		one_hp=$(( $one_hp - 2 ))
		eval $one_xm1='+'
	    fi
	    if [ "${!one_ym1}" == 'M' ] && [ "$one_oldpos" != "$one_ym1" ]; then
		one_hp=$(( $one_hp - 2 ))
		eval $one_ym1='+'
	    fi	

	    
	    
	    #                                KÄMPFE                                 #

	    if [ $round -ge 20 ]; then
		#ZERO
		if [ "$one_xp1_C" == '0' ]; then
		    if [ $one_hp_C -gt $zero_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		if [ "$one_yp1_C" == '0' ]; then
		    if [ $one_hp_C -gt $zero_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		if [ "$one_xm1_C" == '0' ]; then
		    if [ $one_hp_C -gt $zero_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		if [ "$one_ym1_C" == '0' ]; then
		    if [ $one_hp_C -gt $zero_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi

		#TWO
		if [ "$one_xp1_C" == '2' ]; then
		    if [ $one_hp_C -gt $two_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		if [ "$one_yp1_C" == '2' ]; then
		    if [ $one_hp_C -gt $two_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		if [ "$one_xm1_C" == '2' ]; then
		    if [ $one_hp_C -gt $two_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		if [ "$one_ym1_C" == '2' ]; then
		    if [ $one_hp_C -gt $two_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		
		#THREE
		if [ "$one_xp1_C" == '3' ]; then
		    if [ $one_hp_C -gt $three_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		if [ "$one_yp1_C" == '3' ]; then
		    if [ $one_hp_C -gt $three_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		if [ "$one_xm1_C" == '3' ]; then
		    if [ $one_hp_C -gt $three_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		if [ "$one_ym1_C" == '3' ]; then
		    if [ $one_hp_C -gt $three_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi

		
		#FOUR
		if [ "$one_xp1_C" == '4' ]; then
		    if [ $one_hp_C -gt $four_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		if [ "$one_yp1_C" == '4' ]; then
		    if [ $one_hp_C -gt $four_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		if [ "$one_xm1_C" == '4' ]; then
		    if [ $one_hp_C -gt $four_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi
		if [ "$one_ym1_C" == '4' ]; then
		    if [ $one_hp_C -gt $four_hp_C ]; then
			one_hp=$(( $one_hp - 1 ))
		    else
			one_hp=$(( $one_hp - 4 ))
		    fi
		    one_gohome=1
		fi	
	    fi


	    
	    
	    #
	    # ENDLICH FERTIG
	    #
	    
	fi

	
	if [ $go -eq 1 ]; then
	    one_oldpos=$one_ooldpos
	fi

	eval "$one_oldpos"='+'    	
	eval 'x'$one_posx'y'$one_posy='1'

    else
	if [ $one_dead -ne 1 ]; then
	    eval 'x'$one_posx'y'$one_posy='+'
	    one_dead=1
	fi
    fi
	
    #
    #                                                       NEXT PERSON
    #
    











    
    #  2222222
    # 2       2      
    #         2
    #       2
    #     2
    #   2
    # 2
    #  22222222
    
    if [ $two_hp -gt 0 ]; then
    
	two_xp1='x'$(( $two_posx + 1 ))'y'$two_posy
	two_yp1='x'$two_posx'y'$(( $two_posy + 1 ))
	
	two_xm1='x'$(( $two_posx - 1 ))'y'$two_posy
	two_ym1='x'$two_posx'y'$(( $two_posy - 1 ))

	if [ $go -eq 1 ]; then
	    two_ooldpos='x'$two_posx'y'$two_posy
	fi
	
	two_opt=0
	
	two_oxp1=0
	two_oyp1=0
	two_oxm1=0
	two_oym1=0
	
	
	if test "$two_oldpos" != "bla"; then

	    
	    ### FREIE FELDER ERMITTELN
	    
	    if [ "${!two_xp1}" == '+' ] && [ "$two_oldpos" != "$two_xp1" ]; then
		two_opt=$(( $two_opt + 1 ))
		two_oxp1=1
	    fi
	    
	    if [ "${!two_yp1}" == '+' ] && [ "$two_oldpos" != "$two_yp1" ]; then
		two_opt=$(( $two_opt + 1 ))
		two_oyp1=1
	    fi
	    
	    if [ "${!two_xm1}" == '+' ] && [ "$two_oldpos" != "$two_xm1" ]; then
		two_opt=$(( $two_opt + 1 ))
		two_oxm1=1
	    fi
	    if [ "${!two_ym1}" == '+' ] && [ "$two_oldpos" != "$two_ym1" ]; then
		two_opt=$(( $two_opt + 1 ))
		two_oym1=1
	    fi	
	    
	    
	    rand=''
	    
	    block=0
	    block2=0
	    
	    #
	    #       OPTIONS DURCHTESTEN
	    #
	    
	    if [ $two_opt -eq 1 ]; then
		if [ $two_oxp1 -eq 1 ]; then
		    two_posx=$(( $two_posx + 1 ))
		fi
		if [ $two_oyp1 -eq 1 ]; then
		    two_posy=$(( $two_posy + 1 ))
		fi
		if [ $two_oxm1 -eq 1 ]; then
		    two_posx=$(( $two_posx - 1 ))
		fi
		if [ $two_oym1 -eq 1 ]; then
		    two_posy=$(( $two_posy - 1 ))
		fi
		
	    elif [ $two_opt -eq 2 ]; then
		rand=$(( $RANDOM % 2 ))
		if [ $two_oxp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			two_posx=$(( $two_posx + 1 ))
			block=1
		    else
			rand=1
		    fi
		fi
		if [ $two_oyp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			two_posy=$(( $two_posy + 1 ))
		    else
			rand=1
		    fi
		    
		fi
		if [ $two_oxm1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			two_posx=$(( $two_posx - 1 ))
		    else
			rand=1
		    fi
		    
		fi
		if [ $two_oym1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			two_posy=$(( $two_posy - 1 ))
			block=1
		    else
			rand=1
		    fi
		fi
		
	    elif [ $two_opt -eq 3 ]; then
		rand=$(( $RANDOM % 3 ))

		if [ $two_oxp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			two_posx=$(( $two_posx + 1 ))
			block=1
		    else
			rand=$(( $RANDOM % 2 ))
			block2=1
		    fi
		fi
		if [ $two_oyp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			two_posy=$(( $two_posy + 1 ))
		    else
			if [ $block2 -ne 1 ]; then 
			    rand=$(( $RANDOM % 2 ))
			    block2=1
			else
			    rand=1
			fi
		    	
		    fi
		    
		fi
		if [ $two_oxm1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			two_posx=$(( $two_posx - 1 ))
		    else
			if [ $block2 -ne 1 ]; then 
			    rand=$(( $RANDOM % 2 ))
			    block2=1
			else
			    rand=1
			fi
		    fi
		    
		fi
		if [ $two_oym1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			two_posy=$(( $two_posy - 1 ))
			block=1
		    else
			if [ $block2 -ne 1 ]; then 
			    rand=$(( $RANDOM % 2 ))
			    block2=1
			else
			    rand=1
			fi
		    fi
		fi
		
	    fi
	    
	    if [ "${!two_xp1}" == '@' ] && [ "$two_oldpos" != "$two_xp1" ]; then
		break=1
	    fi
	    if [ "${!two_yp1}" == '@' ] && [ "$two_oldpos" != "$two_yp1" ]; then
		break=1
	    fi
	    if [ "${!two_xm1}" == '@' ] && [ "$two_oldpos" != "$two_xm1" ]; then
		break=1
	    fi
	    if [ "${!two_ym1}" == '@' ] && [ "$two_oldpos" != "$two_ym1" ]; then
		break=1
	    fi

	    if [ "${!two_xp1}" == '§' ] && [ "$two_oldpos" != "$two_xp1" ]; then
		two_posx=2
		two_posy=1
	    fi
	    if [ "${!two_yp1}" == '§' ] && [ "$two_oldpos" != "$two_yp1" ]; then
		two_posx=2
		two_posy=1
	    fi
	    if [ "${!two_xm1}" == '§' ] && [ "$two_oldpos" != "$two_xm1" ]; then
		two_posx=2
		two_posy=1
	    fi
	    if [ "${!two_ym1}" == '§' ] && [ "$two_oldpos" != "$two_ym1" ]; then
		two_posx=2
		two_posy=1
	    fi
	    
	    if [ "${!two_xp1}" == '#' ] && [ "$two_oldpos" != "$two_xp1" ]; then
		two_hp=$(( $two_hp + 1 ))
	    fi
	    if [ "${!two_yp1}" == '#' ] && [ "$two_oldpos" != "$two_yp1" ]; then
		two_hp=$(( $two_hp + 1 ))
	    fi
	    if [ "${!two_xm1}" == '#' ] && [ "$two_oldpos" != "$two_xm1" ]; then
		two_hp=$(( $two_hp + 1 ))
	    fi
	    if [ "${!two_ym1}" == '#' ] && [ "$two_oldpos" != "$two_ym1" ]; then
		two_hp=$(( $two_hp + 1 ))
	    fi
	    
	    
	    if [ "${!two_xp1}" == 'M' ] && [ "$two_oldpos" != "$two_xp1" ]; then
		two_hp=$(( $two_hp - 2 ))
		eval $two_xp1='+'
	    fi
	    if [ "${!two_yp1}" == 'M' ] && [ "$two_oldpos" != "$two_yp1" ]; then
		two_hp=$(( $two_hp - 2 ))
		eval $two_yp1='+'
	    fi
	    if [ "${!two_xm1}" == 'M' ] && [ "$two_oldpos" != "$two_xm1" ]; then
		two_hp=$(( $two_hp - 2 ))
		eval $two_xm1='+'
	    fi
	    if [ "${!two_ym1}" == 'M' ] && [ "$two_oldpos" != "$two_ym1" ]; then
		two_hp=$(( $two_hp - 2 ))
		eval $two_ym1='+'
	    fi	



	    
	    #                                KÄMPFE                                 #

	    if [ $round -ge 20 ]; then
		#ZERO
		if [ "$two_xp1_C" == '0' ]; then
		    if [ $two_hp_C -gt $zero_hp_C ]; then
			two_hp=$(( $two_hp - 1 ))
		    else
			two_hp=$(( $two_hp - 4 ))
		    fi
		    two_gohome=1
		fi
		if [ "$two_yp1_C" == '0' ]; then
		    if [ $two_hp_C -gt $zero_hp_C ]; then
			two_hp=$(( $two_hp - 1 ))
		    else
			two_hp=$(( $two_hp - 4 ))
		    fi
		    two_gohome=1
		fi
		if [ "$two_xm1_C" == '0' ]; then
		    if [ $two_hp_C -gt $zero_hp_C ]; then
			two_hp=$(( $two_hp - 1 ))
		    else
			two_hp=$(( $two_hp - 4 ))
		    fi
		    two_gohome=1
		fi
		if [ "$two_ym1_C" == '0' ]; then
		    if [ $two_hp_C -gt $zero_hp_C ]; then
			two_hp=$(( $two_hp - 1 ))
		    else
			two_hp=$(( $two_hp - 4 ))
		    fi
		    two_gohome=1
		fi
		
		
		#ONE
		if [ "$two_xp1_C" == '1' ]; then
		    if [ $two_hp_C -gt $one_hp_C ]; then
			two_hp=$(( $two_hp - 1 ))
		    else
			two_hp=$(( $two_hp - 4 ))
		    fi
		    two_gohome=1
		fi
		if [ "$two_yp1_C" == '1' ]; then
		    if [ $two_hp_C -gt $one_hp_C ]; then
			two_hp=$(( $two_hp - 1 ))
		    else
			two_hp=$(( $two_hp - 4 ))
		    fi
		    two_gohome=1
		fi
		if [ "$two_xm1_C" == '1' ]; then
		    if [ $two_hp_C -gt $one_hp_C ]; then
			two_hp=$(( $two_hp - 1 ))
		    else
			two_hp=$(( $two_hp - 4 ))
		    fi
		    two_gohome=1
		fi
		if [ "$two_ym1_C" == '1' ]; then
		    if [ $two_hp_C -gt $one_hp_C ]; then
			two_hp=$(( $two_hp - 1 ))
		    else
			two_hp=$(( $two_hp - 4 ))
		    fi
		    two_gohome=1
		fi
		
		
		#FOUR
		if [ "$two_xp1_C" == '4' ]; then
		    if [ $two_hp_C -gt $four_hp_C ]; then
			two_hp=$(( $two_hp - 1 ))
		    else
			two_hp=$(( $two_hp - 4 ))
		    fi
		    two_gohome=1
		fi
		if [ "$two_yp1_C" == '4' ]; then
		    if [ $two_hp_C -gt $four_hp_C ]; then
			two_hp=$(( $two_hp - 1 ))
		    else
			two_hp=$(( $two_hp - 4 ))
		    fi
		    two_gohome=1
		fi
		if [ "$two_xm1_C" == '4' ]; then
		    if [ $two_hp_C -gt $four_hp_C ]; then
			two_hp=$(( $two_hp - 1 ))
		    else
			two_hp=$(( $two_hp - 4 ))
		    fi
		    two_gohome=1
		fi
		if [ "$two_ym1_C" == '4' ]; then
		    if [ $two_hp_C -gt $four_hp_C ]; then
			two_hp=$(( $two_hp - 1 ))
		    else
			two_hp=$(( $two_hp - 4 ))
		    fi
		    two_gohome=1
		fi	
	    fi

	   
	    
	    #
	    # ENDLICH FERTIG
	    #
	    
	fi

	
	if [ $go -eq 1 ]; then
	    two_oldpos=$two_ooldpos
	fi


	eval "$two_oldpos"='+'    	
	eval 'x'$two_posx'y'$two_posy='2'

    
    else
	if [ $two_dead -ne 1 ]; then
	    eval 'x'$two_posx'y'$two_posy='+'
	    two_dead=1
	fi	
    fi
	
    #
    #                                                       NEXT PERSON
    #
    










    
    #   33333
    #  3     3
    #       3
    #    333    
    #       3
    #  3     3
    #   33333
    
    if [ $three_hp -gt 0 ]; then
    
	three_xp1='x'$(( $three_posx + 1 ))'y'$three_posy
	three_yp1='x'$three_posx'y'$(( $three_posy + 1 ))
	
	three_xm1='x'$(( $three_posx - 1 ))'y'$three_posy
	three_ym1='x'$three_posx'y'$(( $three_posy - 1 ))

	
	
	if [ $go -eq 1 ]; then
	    three_ooldpos='x'$three_posx'y'$three_posy
	fi
	
	three_opt=0
	
	three_oxp1=0
	three_oyp1=0
	three_oxm1=0
	three_oym1=0
	
	
	if test "$three_oldpos" != "bla"; then

	    ### FREIE FELDER ERMITTELN
	    
	    if [ "${!three_xp1}" == '+' ] && [ "$three_oldpos" != "$three_xp1" ]; then
		three_opt=$(( $three_opt + 1 ))
		three_oxp1=1
	    fi
	    
	    if [ "${!three_yp1}" == '+' ] && [ "$three_oldpos" != "$three_yp1" ]; then
		three_opt=$(( $three_opt + 1 ))
		three_oyp1=1
	    fi
	    
	    if [ "${!three_xm1}" == '+' ] && [ "$three_oldpos" != "$three_xm1" ]; then
		three_opt=$(( $three_opt + 1 ))
		three_oxm1=1
	    fi
	    if [ "${!three_ym1}" == '+' ] && [ "$three_oldpos" != "$three_ym1" ]; then
		three_opt=$(( $three_opt + 1 ))
		three_oym1=1
	    fi	
	    
	    
	    rand=''
	    
	    block=0
	    block2=0
	    
	    #
	    #       OPTIONS DURCHTESTEN
	    #
	    
	    if [ $three_opt -eq 1 ]; then
		if [ $three_oxp1 -eq 1 ]; then
		    three_posx=$(( $three_posx + 1 ))
		fi
		if [ $three_oyp1 -eq 1 ]; then
		    three_posy=$(( $three_posy + 1 ))
		fi
		if [ $three_oxm1 -eq 1 ]; then
		    three_posx=$(( $three_posx - 1 ))
		fi
		if [ $three_oym1 -eq 1 ]; then
		    three_posy=$(( $three_posy - 1 ))
		fi
		
	    elif [ $three_opt -eq 2 ]; then
		rand=$(( $RANDOM % 2 ))
		if [ $three_oxp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			three_posx=$(( $three_posx + 1 ))
			block=1
		    else
			rand=1
		    fi
		fi
		if [ $three_oyp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			three_posy=$(( $three_posy + 1 ))
		    else
			rand=1
		    fi
		    
		fi
		if [ $three_oxm1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			three_posx=$(( $three_posx - 1 ))
		    else
			rand=1
		    fi
		    
		fi
		if [ $three_oym1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			three_posy=$(( $three_posy - 1 ))
			block=1
		    else
			rand=1
		    fi
		fi
		
	    elif [ $three_opt -eq 3 ]; then
		rand=$(( $RANDOM % 3 ))

		if [ $three_oxp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			three_posx=$(( $three_posx + 1 ))
			block=1
		    else
			rand=$(( $RANDOM % 2 ))
			block2=1
		    fi
		fi
		if [ $three_oyp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			three_posy=$(( $three_posy + 1 ))
		    else
			if [ $block2 -ne 1 ]; then 
			    rand=$(( $RANDOM % 2 ))
			    block2=1
			else
			    rand=1
			fi
		    	
		    fi
		    
		fi
		if [ $three_oxm1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			three_posx=$(( $three_posx - 1 ))
		    else
			if [ $block2 -ne 1 ]; then 
			    rand=$(( $RANDOM % 2 ))
			    block2=1
			else
			    rand=1
			fi
		    fi
		    
		fi
		if [ $three_oym1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			three_posy=$(( $three_posy - 1 ))
			block=1
		    else
			if [ $block2 -ne 1 ]; then 
			    rand=$(( $RANDOM % 2 ))
			    block2=1
			else
			    rand=1
			fi
		    fi
		fi
		
	    fi
	    
	    if [ "${!three_xp1}" == '@' ] && [ "$three_oldpos" != "$three_xp1" ]; then
		break=1
	    fi
	    if [ "${!three_yp1}" == '@' ] && [ "$three_oldpos" != "$three_yp1" ]; then
		break=1
	    fi
	    if [ "${!three_xm1}" == '@' ] && [ "$three_oldpos" != "$three_xm1" ]; then
		break=1
	    fi
	    if [ "${!three_ym1}" == '@' ] && [ "$three_oldpos" != "$three_ym1" ]; then
		break=1
	    fi

	    if [ "${!three_xp1}" == '§' ] && [ "$three_oldpos" != "$three_xp1" ]; then
		three_posx=2
		three_posy=1
	    fi
	    if [ "${!three_yp1}" == '§' ] && [ "$three_oldpos" != "$three_yp1" ]; then
		three_posx=2
		three_posy=1
	    fi
	    if [ "${!three_xm1}" == '§' ] && [ "$three_oldpos" != "$three_xm1" ]; then
		three_posx=2
		three_posy=1
	    fi
	    if [ "${!three_ym1}" == '§' ] && [ "$three_oldpos" != "$three_ym1" ]; then
		three_posx=2
		three_posy=1
	    fi
	    
	    if [ "${!three_xp1}" == '#' ] && [ "$three_oldpos" != "$three_xp1" ]; then
		three_hp=$(( $three_hp + 1 ))
	    fi
	    if [ "${!three_yp1}" == '#' ] && [ "$three_oldpos" != "$three_yp1" ]; then
		three_hp=$(( $three_hp + 1 ))
	    fi
	    if [ "${!three_xm1}" == '#' ] && [ "$three_oldpos" != "$three_xm1" ]; then
		three_hp=$(( $three_hp + 1 ))
	    fi
	    if [ "${!three_ym1}" == '#' ] && [ "$three_oldpos" != "$three_ym1" ]; then
		three_hp=$(( $three_hp + 1 ))
	    fi
	    
	    
	    if [ "${!three_xp1}" == 'M' ] && [ "$three_oldpos" != "$three_xp1" ]; then
		three_hp=$(( $three_hp - 2 ))
		eval $three_xp1='+'
	    fi
	    if [ "${!three_yp1}" == 'M' ] && [ "$three_oldpos" != "$three_yp1" ]; then
		three_hp=$(( $three_hp - 2 ))
		eval $three_yp1='+'
	    fi
	    if [ "${!three_xm1}" == 'M' ] && [ "$three_oldpos" != "$three_xm1" ]; then
		three_hp=$(( $three_hp - 2 ))
		eval $three_xm1='+'
	    fi
	    if [ "${!three_ym1}" == 'M' ] && [ "$three_oldpos" != "$three_ym1" ]; then
		three_hp=$(( $three_hp - 2 ))
		eval $three_ym1='+'
	    fi	
	    

	    
	    #                                KÄMPFE                                 #

	    if [ $round -ge 40 ]; then
		#ZERO
		if [ "$three_xp1_C" == '0' ]; then
		    if [ $three_hp_C -gt $zero_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		if [ "$three_yp1_C" == '0' ]; then
		    if [ $three_hp_C -gt $zero_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		if [ "$three_xm1_C" == '0' ]; then
		    if [ $three_hp_C -gt $zero_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		if [ "$three_ym1_C" == '0' ]; then
		    if [ $three_hp_C -gt $zero_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		
		
		#ONE
		if [ "$three_xp1_C" == '1' ]; then
		    if [ $three_hp_C -gt $one_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		if [ "$three_yp1_C" == '1' ]; then
		    if [ $three_hp_C -gt $one_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		if [ "$three_xm1_C" == '1' ]; then
		    if [ $three_hp_C -gt $one_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		if [ "$three_ym1_C" == '1' ]; then
		    if [ $three_hp_C -gt $one_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		
		#TWO
		if [ "$three_xp1_C" == '4' ]; then
		    if [ $three_hp_C -gt $two_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		if [ "$three_yp1_C" == '4' ]; then
		    if [ $three_hp_C -gt $two_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		if [ "$three_xm1_C" == '4' ]; then
		    if [ $three_hp_C -gt $two_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		if [ "$three_ym1_C" == '4' ]; then
		    if [ $three_hp_C -gt $two_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		
		#FOUR
		if [ "$three_xp1_C" == '4' ]; then
		    if [ $three_hp_C -gt $four_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		if [ "$three_yp1_C" == '4' ]; then
		    if [ $three_hp_C -gt $four_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		if [ "$three_xm1_C" == '4' ]; then
		    if [ $three_hp_C -gt $four_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
		if [ "$three_ym1_C" == '4' ]; then
		    if [ $three_hp_C -gt $four_hp_C ]; then
			three_hp=$(( $three_hp - 1 ))
		    else
			three_hp=$(( $three_hp - 4 ))
		    fi
		    three_gohome=1
		fi
	    fi
	    
	    
	    #
	    # ENDLICH FERTIG
	    #
	    
	fi
	
	
	if [ $go -eq 1 ]; then
	    three_oldpos=$three_ooldpos
	fi
	
    	eval "$three_oldpos"='+'
	eval 'x'$three_posx'y'$three_posy='3'
	
    else
	if [ $three_dead -ne 1 ]; then
	    eval 'x'$three_posx'y'$three_posy='+'
	    three_dead=1
	fi
    fi
    
    #
    #                                                       NEXT PERSON
    #













    #        4
    #       44
    #      4 4
    #     4  4
    #    4   4
    #   4    4
    #  4444444444
    #        4
    #        4
    
    if [ $four_hp -gt 0 ]; then
    
	four_xp1='x'$(( $four_posx + 1 ))'y'$four_posy
	four_yp1='x'$four_posx'y'$(( $four_posy + 1 ))
	
	four_xm1='x'$(( $four_posx - 1 ))'y'$four_posy
	four_ym1='x'$four_posx'y'$(( $four_posy - 1 ))

	
	
	if [ $go -eq 1 ]; then
	    four_ooldpos='x'$four_posx'y'$four_posy
	fi
	
	four_opt=0
	
	four_oxp1=0
	four_oyp1=0
	four_oxm1=0
	four_oym1=0
	
	
	if test "$four_oldpos" != "bla"; then

	    ### FREIE FELDER ERMITTELN
	    
	    if [ "${!four_xp1}" == '+' ] && [ "$four_oldpos" != "$four_xp1" ]; then
		four_opt=$(( $four_opt + 1 ))
		four_oxp1=1
	    fi
	    
	    if [ "${!four_yp1}" == '+' ] && [ "$four_oldpos" != "$four_yp1" ]; then
		four_opt=$(( $four_opt + 1 ))
		four_oyp1=1
	    fi
	    
	    if [ "${!four_xm1}" == '+' ] && [ "$four_oldpos" != "$four_xm1" ]; then
		four_opt=$(( $four_opt + 1 ))
		four_oxm1=1
	    fi
	    if [ "${!four_ym1}" == '+' ] && [ "$four_oldpos" != "$four_ym1" ]; then
		four_opt=$(( $four_opt + 1 ))
		four_oym1=1
	    fi	
	    
	    
	    rand=''
	    
	    block=0
	    block2=0
	    
	    #
	    #       OPTIONS DURCHTESTEN
	    #
	    
	    if [ $four_opt -eq 1 ]; then
		if [ $four_oxp1 -eq 1 ]; then
		    four_posx=$(( $four_posx + 1 ))
		fi
		if [ $four_oyp1 -eq 1 ]; then
		    four_posy=$(( $four_posy + 1 ))
		fi
		if [ $four_oxm1 -eq 1 ]; then
		    four_posx=$(( $four_posx - 1 ))
		fi
		if [ $four_oym1 -eq 1 ]; then
		    four_posy=$(( $four_posy - 1 ))
		fi
		
	    elif [ $four_opt -eq 2 ]; then
		rand=$(( $RANDOM % 2 ))
		if [ $four_oxp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			four_posx=$(( $four_posx + 1 ))
			block=1
		    else
			rand=1
		    fi
		fi
		if [ $four_oyp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			four_posy=$(( $four_posy + 1 ))
		    else
			rand=1
		    fi
		    
		fi
		if [ $four_oxm1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			four_posx=$(( $four_posx - 1 ))
		    else
			rand=1
		    fi
		    
		fi
		if [ $four_oym1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			four_posy=$(( $four_posy - 1 ))
			block=1
		    else
			rand=1
		    fi
		fi
		
	    elif [ $four_opt -eq 3 ]; then
		rand=$(( $RANDOM % 3 ))

		if [ $four_oxp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			four_posx=$(( $four_posx + 1 ))
			block=1
		    else
			rand=$(( $RANDOM % 2 ))
			block2=1
		    fi
		fi
		if [ $four_oyp1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			four_posy=$(( $four_posy + 1 ))
		    else
			if [ $block2 -ne 1 ]; then 
			    rand=$(( $RANDOM % 2 ))
			    block2=1
			else
			    rand=1
			fi
		    	
		    fi
		    
		fi
		if [ $four_oxm1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			block=1
			four_posx=$(( $four_posx - 1 ))
		    else
			if [ $block2 -ne 1 ]; then 
			    rand=$(( $RANDOM % 2 ))
			    block2=1
			else
			    rand=1
			fi
		    fi
		    
		fi
		if [ $four_oym1 -eq 1 ] && [ $block -ne 1 ]; then
		    if [ $rand -eq 1 ]; then
			four_posy=$(( $four_posy - 1 ))
			block=1
		    else
			if [ $block2 -ne 1 ]; then 
			    rand=$(( $RANDOM % 2 ))
			    block2=1
			else
			    rand=1
			fi
		    fi
		fi
		
	    fi
	    
	    if [ "${!four_xp1}" == '@' ] && [ "$four_oldpos" != "$four_xp1" ]; then
		break=1
	    fi
	    if [ "${!four_yp1}" == '@' ] && [ "$four_oldpos" != "$four_yp1" ]; then
		break=1
	    fi
	    if [ "${!four_xm1}" == '@' ] && [ "$four_oldpos" != "$four_xm1" ]; then
		break=1
	    fi
	    if [ "${!four_ym1}" == '@' ] && [ "$four_oldpos" != "$four_ym1" ]; then
		break=1
	    fi

	    if [ "${!four_xp1}" == '§' ] && [ "$four_oldpos" != "$four_xp1" ]; then
		four_posx=2
		four_posy=1
	    fi
	    if [ "${!four_yp1}" == '§' ] && [ "$four_oldpos" != "$four_yp1" ]; then
		four_posx=2
		four_posy=1
	    fi
	    if [ "${!four_xm1}" == '§' ] && [ "$four_oldpos" != "$four_xm1" ]; then
		four_posx=2
		four_posy=1
	    fi
	    if [ "${!four_ym1}" == '§' ] && [ "$four_oldpos" != "$four_ym1" ]; then
		four_posx=2
		four_posy=1
	    fi
	    
	    if [ "${!four_xp1}" == '#' ] && [ "$four_oldpos" != "$four_xp1" ]; then
		four_hp=$(( $four_hp + 1 ))
	    fi
	    if [ "${!four_yp1}" == '#' ] && [ "$four_oldpos" != "$four_yp1" ]; then
		four_hp=$(( $four_hp + 1 ))
	    fi
	    if [ "${!four_xm1}" == '#' ] && [ "$four_oldpos" != "$four_xm1" ]; then
		four_hp=$(( $four_hp + 1 ))
	    fi
	    if [ "${!four_ym1}" == '#' ] && [ "$four_oldpos" != "$four_ym1" ]; then
		four_hp=$(( $four_hp + 1 ))
	    fi
	    
	    
	    if [ "${!four_xp1}" == 'M' ] && [ "$four_oldpos" != "$four_xp1" ]; then
		four_hp=$(( $four_hp - 2 ))
		eval $four_xp1='+'
	    fi
	    if [ "${!four_yp1}" == 'M' ] && [ "$four_oldpos" != "$four_yp1" ]; then
		four_hp=$(( $four_hp - 2 ))
		eval $four_yp1='+'
	    fi
	    if [ "${!four_xm1}" == 'M' ] && [ "$four_oldpos" != "$four_xm1" ]; then
		four_hp=$(( $four_hp - 2 ))
		eval $four_xm1='+'
	    fi
	    if [ "${!four_ym1}" == 'M' ] && [ "$four_oldpos" != "$four_ym1" ]; then
		four_hp=$(( $four_hp - 2 ))
		eval $four_ym1='+'
	    fi	
	    

	    
	    #                                KÄMPFE                                 #

	    if [ $round -ge 20 ]; then
		#ZERO
		if [ "$four_xp1_C" == '0' ]; then
		    if [ $four_hp_C -gt $zero_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		if [ "$four_yp1_C" == '0' ]; then
		    if [ $four_hp_C -gt $zero_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		if [ "$four_xm1_C" == '0' ]; then
		    if [ $four_hp_C -gt $zero_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		if [ "$four_ym1_C" == '0' ]; then
		    if [ $four_hp_C -gt $zero_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		
		
		#ONE
		if [ "$four_xp1_C" == '1' ]; then
		    if [ $four_hp_C -gt $one_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		if [ "$four_yp1_C" == '1' ]; then
		    if [ $four_hp_C -gt $one_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		if [ "$four_xm1_C" == '1' ]; then
		    if [ $four_hp_C -gt $one_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		if [ "$four_ym1_C" == '1' ]; then
		    if [ $four_hp_C -gt $one_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		
		#TWO
		if [ "$four_xp1_C" == '2' ]; then
		    if [ $four_hp_C -gt $two_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		if [ "$four_yp1_C" == '2' ]; then
		    if [ $four_hp_C -gt $two_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		if [ "$four_xm1_C" == '2' ]; then
		    if [ $four_hp_C -gt $two_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		if [ "$four_ym1_C" == '2' ]; then
		    if [ $four_hp_C -gt $two_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi


		#THREE
		if [ "$four_xp1_C" == '3' ]; then
		    if [ $four_hp_C -gt $three_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		if [ "$four_yp1_C" == '3' ]; then
		    if [ $four_hp_C -gt $three_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		if [ "$four_xm1_C" == '3' ]; then
		    if [ $four_hp_C -gt $three_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
		if [ "$four_ym1_C" == '3' ]; then
		    if [ $four_hp_C -gt $three_hp_C ]; then
			four_hp=$(( $four_hp - 1 ))
		    else
			four_hp=$(( $four_hp - 4 ))
		    fi
		    four_gohome=1
		fi
	    fi
	    
	    #
	    # ENDLICH FERTIG
	    #
	    
	fi
	
	
	if [ $go -eq 1 ]; then
	    four_oldpos=$four_ooldpos
	fi
	
    	eval "$four_oldpos"='+'
	eval 'x'$four_posx'y'$four_posy='4'
	
    else
	if [ $four_dead -ne 1 ]; then
	    eval 'x'$four_posx'y'$four_posy='+'
	    four_dead=1
	fi
	
    fi
    #
    #                                                       NEXT PERSON
    #



    x15y44='A'
    x9y48='C'
    x16y62='B'
    x12y62='D'
    x11y75='E'

    if [ $zero_gohome -eq 1 ]; then
	gohome zero
    fi
    if [ $one_gohome -eq 1 ]; then
	gohome one
    fi
    if [ $two_gohome -eq 1 ]; then
	gohome two
    fi
    if [ $three_gohome -eq 1 ]; then
	gohome three
    fi
    if [ $four_gohome -eq 1 ]; then
	gohome four
    fi

    

    if [ $break -eq 1 ]; then

	tput cup 21 77
	echo -en "05"
	sleep 1
	
	tput cup 21 77
	echo -en "04"
	sleep 1
	
	tput cup 21 77
	echo -en "03"
	sleep 1
	
	tput cup 21 77
	echo -en "02"
	sleep 1
	
	tput cup 21 77
	echo -en "01"
	sleep 1
	
	tput cup 21 77
	echo -en "00"
	sleep 1

	
	tput cup 1 1

	x=1
	while [ $x -le 20 ]; do
	    y=1
	    tput cup $x 1
	    echo -en "\033[43m                                                                              "
	    sleep 0.04
	    x=$(( $x + 1 ))
	done
	tput cup 9  31
	echo -en "\033[41;1;34m                 "
	tput cup 10 31
	echo -en "\033[41;1;34m    GAME OVER    "
	tput cup 11 31
	echo -en "\033[41;1;34m                 "
	tput cup 21 1
	echo -en "\033[0m                                                                              "
	tput cup 21 1
	break
    fi
    

    if [ $round -le 20 ]; then
	tput cup 21 77
	echo -en "\033[1;31m  \033[0m"
	tput cup 21 77
	echo -en "\033[1;31m"$(( ( 20 - $round ) / 5 ))"\033[0m"
    else
	tput cup 21 77
	echo -en "\033[1;31m  \033[0m"
    fi
   
    
    
    #FELD MAAAALEN

    x2y1='K'
    
    if [ "$dump" == "" ]; then
	if [ "$1" == '--dump' ]; then
	    dump='y'
	else
	    dump='n'
	fi
	
    clear
    if [ "$dump" == 'y' ]; then
	rm -f .dump_data/*
    fi
    

    fi
    
    if [ $dump == 'y' ]; then
	x=1
    while [ $x -le 20 ]; do
	y=1
	nxtline=''
	while [ $y -le 78 ]; do
	    xyc='x'$x'y'$y

		format=''
		
		if test ${!xyc} == 'X'; then
		    format='\033[31m'
		elif test ${!xyc} == '0'; then
		    format='\033[1;42m'
		elif test ${!xyc} == '1'; then
		    format='\033[1;46m'
		elif test ${!xyc} == '2'; then
		    format='\033[1;46m'
		elif test ${!xyc} == '3'; then
		    format='\033[1;46m'
		elif test ${!xyc} == '4'; then
		    format='\033[1;46m'
		elif test ${!xyc} == 'A'; then
		    format='\033[1;47;30m'
		elif test ${!xyc} == 'B'; then
		    format='\033[1;47;30m'
		elif test ${!xyc} == 'C'; then
		    format='\033[1;47;30m'
		elif test ${!xyc} == 'D'; then
		    format='\033[1;47;30m'
		elif test ${!xyc} == 'E'; then
		    format='\033[1;47;30m'
		elif test ${!xyc} == 'M'; then
		    format='\033[1;43m'
		elif test ${!xyc} == 'K'; then
		    format='\033[1;42;32m'
		elif test ${!xyc} == '+'; then
		    format='\033[1;30;40m'
		elif test ${!xyc} == '#'; then
		    format='\033[1;34;44m'
		elif test ${!xyc} == '@'; then
		    format='\033[1;33;45m'
		elif test ${!xyc} == '§'; then
		    format='\033[1;33;44m'
		fi
	       
		nxtline=$nxtline"$format${!xyc}\033[0m"
	    
	    y=$(( $y + 1 ))
	done

	echo "$nxtline" >> .dump_data/$round.txt
	
	x=$(( $x + 1 ))
    done
    fi

    
    x=1
    while [ $x -le 20 ]; do
	y=1
	while [ $y -le 78 ]; do
	    xyc='x'$x'y'$y
	    oxyc='oldx'$x'y'$y

	    if test "${!oxyc}" != "${!xyc}"; then
		tput cup $x $y

		format=''
		
		if test ${!xyc} == 'X'; then
		    format='\033[31m'
		elif test ${!xyc} == '0'; then
		    format='\033[1;42m'
		elif test ${!xyc} == '1'; then
		    format='\033[1;46m'
		elif test ${!xyc} == '2'; then
		    format='\033[1;46m'
		elif test ${!xyc} == '3'; then
		    format='\033[1;46m'
		elif test ${!xyc} == '4'; then
		    format='\033[1;46m'
		elif test ${!xyc} == 'A'; then
		    format='\033[1;47;30m'
		elif test ${!xyc} == 'B'; then
		    format='\033[1;47;30m'
		elif test ${!xyc} == 'C'; then
		    format='\033[1;47;30m'
		elif test ${!xyc} == 'D'; then
		    format='\033[1;47;30m'
		elif test ${!xyc} == 'E'; then
		    format='\033[1;47;30m'
		elif test ${!xyc} == 'M'; then
		    format='\033[1;43m'
		elif test ${!xyc} == 'K'; then
		    format='\033[1;42;32m'
		elif test ${!xyc} == '+'; then
		    format='\033[1;30;40m'
		elif test ${!xyc} == '#'; then
		    format='\033[1;34;44m'
		elif test ${!xyc} == '@'; then
		    format='\033[1;33;45m'
		elif test ${!xyc} == '§'; then
		    format='\033[1;33;44m'
		fi
	       
		echo -e "$format${!xyc}\033[0m"
	    fi

	    eval 'oldx'$x'y'$y=${!xyc}
	    
	    y=$(( $y + 1 ))
	done
	x=$(( $x + 1 ))
    done


    #
    #   HP: ZERO
    #
    
    i=1
    tput cup 21 1
    dumphp="\033[1;46m0\033[0m:"
    echo -en "\033[1;46m0\033[0m:"

    if [ $zero_hp -le 3 ]; then
	zero_hpf='41m'
    elif [ $zero_hp -le 6 ]; then
	zero_hpf='43m'
    elif [ $zero_hp -le 10 ]; then
	zero_hpf='42m'
    fi
    
    echo -en "\033[1;$zero_hpf"
    dumphp=$dumphp"\033[1;$zero_hpf"
    
    if [ $zero_hp -le 0 ]; then
	echo -en "\033[1;31;41m   DEAD   \033[0m"
	dumphp=$dumphp'\033[1;31;41m \033[1;31;41m \033[1;31;41m DEAD \033[1;31;41m \033[1;31;41m \033[0m'
	zero_live=0
    else
    
	while [ $i -le 10 ]; do
	    if [ $i -le $zero_hp ]; then
		echo -n "I"
		dumphp=$dumphp"I"
	    else
		echo -en "\033[46m "
		dumphp=$dumphp"\033[46m "
	    fi
	    
	    i=$(( i + 1 ))
	done

    fi

    dumphp=$dumphp'\033[0m---'
    
    #
    #   HP: ONE
    #
    
    i=1
    tput cup 21 16
    dumphp=$dumphp"\033[1;46m1\033[0m:"
    echo -en "\033[1;46m1\033[0m:"

    if [ $one_hp -le 3 ]; then
	one_hpf='41m'
    elif [ $one_hp -le 6 ]; then
	one_hpf='43m'
    elif [ $one_hp -le 10 ]; then
	one_hpf='42m'
    fi
    
    echo -en "\033[1;$one_hpf"
    dumphp=$dumphp"\033[1;$one_hpf"
    if [ $one_hp -le 0 ]; then
	echo -en "\033[1;31;41m   DEAD   \033[0m"
	dumphp=$dumphp'\033[1;31;41m \033[1;31;41m \033[1;31;41m DEAD \033[1;31;41m \033[1;31;41m \033[0m'
	one_live=0
    else
    
	while [ $i -le 10 ]; do
	    if [ $i -le $one_hp ]; then
		echo -n "I"
		dumphp=$dumphp"I"
	    else
		echo -en "\033[46m "
		dumphp=$dumphp"\033[46m "
	    fi
	    
	    i=$(( i + 1 ))
	done

    fi
    dumphp=$dumphp'\033[0m---'


    #
    #   HP: TWO
    #
    
    i=1
    tput cup 21 31
    dumphp=$dumphp"\033[1;46m2\033[0m:"
    echo -en "\033[1;46m2\033[0m:"

    if [ $two_hp -le 3 ]; then
	two_hpf='41m'
    elif [ $two_hp -le 6 ]; then
	two_hpf='43m'
    elif [ $two_hp -le 10 ]; then
	two_hpf='42m'
    fi
    
    dumphp=$dumphp"\033[1;$two_hpf"    
    echo -en "\033[1;$two_hpf"
    if [ $two_hp -le 0 ]; then
	echo -en "\033[1;31;41m   DEAD   \033[0m"
	dumphp=$dumphp'\033[1;31;41m \033[1;31;41m \033[1;31;41m DEAD \033[1;31;41m \033[1;31;41m \033[0m'
	two_live=0
    else
    
	while [ $i -le 10 ]; do
	    if [ $i -le $two_hp ]; then
		echo -n "I"
		dumphp=$dumphp"I"
	    else
		dumphp=$dumphp"\033[46m "
		echo -en "\033[46m "
	    fi
	    
	    i=$(( i + 1 ))
	done

    fi
    dumphp=$dumphp'\033[0m---'

    
    #NXT
    
    
    #
    #   HP: THREE
    #
    
    i=1
    tput cup 21 46
    dumphp=$dumphp"\033[1;46m3\033[0m:"
    echo -en "\033[1;46m3\033[0m:"

    if [ $three_hp -le 3 ]; then
	three_hpf='41m'
    elif [ $three_hp -le 6 ]; then
	three_hpf='43m'
    elif [ $three_hp -le 10 ]; then
	three_hpf='42m'
    fi
    
    dumphp=$dumphp"\033[1;$three_hpf"        
    echo -en "\033[1;$three_hpf"
    if [ $three_hp -le 0 ]; then
	dumphp=$dumphp'\033[1;31;41m \033[1;31;41m \033[1;31;41m DEAD \033[1;31;41m \033[1;31;41m \033[0m'
	echo -en "\033[1;31;41m   DEAD   \033[0m"
	three_live=0
    else
    
	while [ $i -le 10 ]; do
	    if [ $i -le $three_hp ]; then
		echo -n "I"
		dumphp=$dumphp"I"
	    else
		echo -en "\033[46m "
		dumphp=$dumphp"\033[46m "
	    fi
	    
	    i=$(( i + 1 ))
	done

    fi

    dumphp=$dumphp'\033[0m---'

    #NXT


    
    #
    #   HP: FOUR
    #
    
    i=1
    tput cup 21 61
    dumphp=$dumphp"\033[1;46m4\033[0m:"
    echo -en "\033[1;46m4\033[0m:"

    if [ $four_hp -le 3 ]; then
	four_hpf='41m'
    elif [ $four_hp -le 6 ]; then
	four_hpf='43m'
    elif [ $four_hp -le 10 ]; then
	four_hpf='42m'
    fi
    
    dumphp=$dumphp"\033[1;$four_hpf"        
    echo -en "\033[1;$four_hpf"
    if [ $four_hp -le 0 ]; then
	dumphp=$dumphp'\033[1;31;41m \033[1;31;41m \033[1;31;41m DEAD \033[1;31;41m \033[1;31;41m \033[0m'
	echo -en "\033[1;31;41m   DEAD   \033[0m"
	four_live=0
    else
    
	while [ $i -le 10 ]; do
	    if [ $i -le $four_hp ]; then
		echo -n "I"
		dumphp=$dumphp"I"
	    else
		echo -en "\033[46m "
		dumphp=$dumphp"\033[46m "
	    fi
	    
	    i=$(( i + 1 ))
	done

    fi

    dumphp=$dumphp'\033[0m---'

    if [ $dump == 'y' ]; then
	echo "$dumphp" >> .dump_data/$round.txt
    fi

    
    #NXT

    livecount=0
    
    if [ $zero_live -eq 1 ]; then
	livecount=$(( $livecount + 1 ))
    fi

    if [ $one_live -eq 1 ]; then
	livecount=$(( $livecount + 1 ))
    fi
    
    if [ $two_live -eq 1 ]; then
	livecount=$(( $livecount + 1 ))
    fi

    if [ $three_live -eq 1 ]; then
	livecount=$(( $livecount + 1 ))
    fi

    if [ $four_live -eq 1 ]; then
	livecount=$(( $livecount + 1 ))
    fi

    if [ $livecount -le 2 ]; then
	x11y20='@'
    else
	x11y20='§'
    fi
    
    round=$(( $round + 1 ))

    echo -en "\033[0m"
    
    go=1

done

if [ $down -eq 1 ]; then
    break;
fi


sleep 3
done
