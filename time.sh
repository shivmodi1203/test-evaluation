echo "Enter time in hh:mm format"
read time
hour=$(echo $time | cut -f1 -d ":")
minut=$(echo $time | cut -f2 -d ":")
if [ $hour -gt 24 ] || [ $minut -gt 59 ];
then
        echo "Enter valid time"
        exit 0
fi
minut=$(($hour*60 + $minut))
if [ $minut -ge 0 ] && [ $minut -le 360 ];
then
	echo "Early Morning"
elif [ $minut -gt 360 ] && [ $minut -le 720 ];
then
        echo "Morning"
elif [ $minut -gt 720 ] && [ $minut -le 1080 ];
then
        echo "Afternoon"
elif [ $minut -gt 1080 ] && [ $minut -le 1439 ];
then
        echo "late night"
else
        echo "Enter valid time"
fi