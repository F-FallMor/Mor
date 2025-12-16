#! /bin/bash
#EXECUTE TO CREATE FILE
mkdir bash_demo
cd bash_demo
touch demo.txt
echo "Hello, this file was created in $(date +"%d-%m-%Y") at $(date +"%H.%M")" > demo.txt
cat demo.txt