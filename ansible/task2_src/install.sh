# !/usr/bin/bash

if [ -d "/usr/local/go" ]
then
    rm -r /usr/local/go
fi

if [ -d "/home/mftiedu/go" ]
then
    rm -r /usr/local/go
fi
mkdir /home/mftiedu/go

if [ -d "/home/mftiedu/dnet/task2_src/go.*" ]
then
    rm /home/mftiedu/dnet/task2_src/go.*
fi

tar -C /usr/local -xvf /home/mftiedu/dnet/task2_src/go1.17.3.linux-amd64.tar.gz
export PATH=/usr/local/go/bin:$PATH
export GO111MODULE=on
export GOROOT=/usr/local/go


/usr/local/go/bin/go get -u github.com/labstack/echo/v4
