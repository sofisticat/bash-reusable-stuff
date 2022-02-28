#!/bin/bash


if [ "${UID}" != 0 ];
then echo "You must be root!";
	exit 1;
fi;
read -p "Insert the port to be killed: " PORT_ADDR

re='^[0-9]+$'
if ! [[ $PORT_ADDR =~ $re ]]; 
then echo "Invalid port insertion."; exit 1;
fi;

PID=`lsof -ti:$PORT_ADDR`
	
if [ ! -z "$PID" ]; 

then kill -9 PID;
   exit 0;
else
   echo "Nothing that's working on that port";
   exit 1;
fi;





