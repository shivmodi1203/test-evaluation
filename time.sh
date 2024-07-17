echo "Enter time in hh:mm format( e.g. 10:10 ) :"
read time
hour=$(echo $time | cut -f1 -d ":")
minut=$(echo $time | cut -f2 -d ":")

# flag=true
# len=${#time}
# for ((i=0;i<len;i++));
# do
#         if [ "${time:i:1}" == ":" ] ;
#         then
#                 flag=false
#         fi
# done

# if [ ${flag} == true ] || [ $hour -gt 24 ] || [ $minut -gt 59 ] || [ "${hour}" == "" ] || [ "${minut}" == "" ] || [ ${#hour} -ne 2 ] || [ ${#minut} -ne 2 ];
# then
#         echo "The input format is invalid please enter valid time"
#         exit 0
# fi

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