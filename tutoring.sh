#!/bin/bash

cd ./contents/20190806
perl mit delete
perl mit add
perl mit update
cd ..
gnome-terminal --tab -e "python ./webserver.py"
cd ~
gnome-terminal --tab -e "python ./Documents/M1/tutoring/myapp/myapp.py"

cd apache-jena-fuseki-3.9.0
gnome-terminal --tab -e "./fuseki-server"
cd ~
sleep 1
gnome-terminal --tab -e "./Downloads/PocketMMDAgent-1.1-20190425-linux/MMDAgent http://localhost:8000/20190806"
