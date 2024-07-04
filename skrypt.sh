#!/bin/bash
komenda=$1
x=1
case "$komenda" in

  "--date") date -u ;;

  "--logs") while [ $x -le 100 ]
	do
		touch log"$x".txt
		echo log"$x".txt >> log"$x".txt
		echo "utworzony przez skrypt.sh w dniu i godzinie:" >> log"$x".txt
		date -u >> log"$x".txt
		x=$[x+1]
done 
;;

  *) echo "Nic nie wybrałeś"

esac