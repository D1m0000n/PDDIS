# !/usr/bin/bash

/usr/local/go/bin/go run /home/mftiedu/dnet/task2_src/echo_server.go &

ep_pid=$!
sleep 5
echo $ep_pid >pid
