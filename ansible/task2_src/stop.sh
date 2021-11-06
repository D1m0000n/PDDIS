# !/usr/bin/bash

read ep_pid < pid
kill -9 $ep_pid
rm pid
