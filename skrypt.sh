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

  "--error" | "-e") while [ $x -le $y ]
	do
		mkdir error"$x"
		cd error"$x"
		touch error"$x".txt
		echo error"$x".txt >> error"$x".txt
		echo "utworzony przez skrypt.sh w dniu i godzinie:" >> error"$x".txt
		date -u >> error"$x".txt
		cd -
		x=$[x+1]
done 
;;



  "--help") echo "lista Komend"
		echo "--date - wyswietla obecna date i godzine"
		echo "--logs x - przyjmuje argument x i w zaleznosci od argumentu generuje pliki od log1.txt do logx.txt"
		echo "kazdy z plikow logx.txt zawiera date utworzenia, skrypt ktory go utworzyl oraz nazwe pliku"
		echo "--error / -e tworzy foldery errorx zawierajace plik errorx.txt"
;;
  *) echo "Nic nie wybrałeś" ;;

esac