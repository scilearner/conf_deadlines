
ls */*.yml | while read line; do echo $line; r=`grep ccf $line`; echo $r; done
