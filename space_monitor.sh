# !/usr/bin/bash

execute_periodically () {
	while /bin/true; do
		memory_info=$(free -m)
		info_arr=(${memory_info// / })
		all_memory=${info_arr[7]}
		free_memory=${info_arr[9]}
		used_memory=${info_arr[8]}
		timestamp=$(date +%Y-%m-%d_%H-%M-%S)
		(echo -n $timestamp";"$all_memory";"$free_memory";%" & echo "100*$used_memory / $all_memory" | bc) >>log.csv
		sleep 10
	done
}

if [[ "$1" == "START" ]]; then

	if [ -f log.csv ] ; then
		rm log.csv
	fi
	touch log.csv

	execute_periodically &
	ep_pid=$!
	echo "PID is: "$ep_pid
	echo $ep_pid >pid

elif [[ "$1" == "STOP" ]]; then
	if [ -f pid ]; then
		read ep_pid < pid
		kill -9 $ep_pid
		rm pid
	else
		echo "Can't stop stopped monitor"
	fi
elif [[ "$1" == "STATUS" ]]; then
	# read ep_pid < pid 2> /dev/null
	# echo $ep_pid
	if [ -f pid ]; then
		echo "Space monitor is working"
	else
		echo "Space monitor is NOT working"
	fi
else
	echo "Got wrong command"
fi