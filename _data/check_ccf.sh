
ls */*.yml | while read line; do echo $line; r=`grep "$1" $line`; echo $r; done
