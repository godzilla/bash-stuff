PWDDIR=~/pwd

mkdir -p  $PWDDIR

if [ $# = 0 ]
then
        clear
        for zzz in `ls -rAt $PWDDIR`
        do
                printf "%14s  %s\n" $zzz `cat $PWDDIR/$zzz`
        done
        echo
else
        if [ $# = 2 ]
        then

                if [ $2 = "cls" ]
                then
                        rm -f $PWDDIR/$1
                        echo removed $PWDDIR/$1
                else
                        echo p whatever cls
                fi
        else
                if [ -f $PWDDIR/$1 ]
                then
                        cd `cat $PWDDIR/$1`
                else
                        pwd > $PWDDIR/$1
                        chmod 666 $PWDDIR/$1
                        echo created $PWDDIR/$1
                fi
        fi
fi

