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

  *) echo "Nic nie wybrałeś"

esac