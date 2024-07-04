#!/bin/bash
komenda=$1
x=1
y=$2
if [[ -z "$y" ]]
then 
	y=100
fi

case "$komenda" in

  "--date") date -u ;;

  "--logs") while [ $x -le $y ]
	do
		touch log"$x".txt
		echo log"$x".txt >> log"$x".txt
		echo "utworzony przez skrypt.sh w dniu i godzinie:" >> log"$x".txt
		date -u >> log"$x".txt
		x=$[x+1]
done 
;;

  "--help") echo "lista Komend"
		echo "--date - wyswietla obecna date i godzine"
		echo "--logs x - przyjmuje argument x i w zaleznosci od argumentu generuje pliki od log1.txt do logx.txt"
		echo "kazdy z plikow logx.txt zawiera date utworzenia, skrypt ktory go utworzyl oraz nazwe pliku"
;;
  *) echo "Nic nie wybrałeś" ;;

esac