#!/bin/bash

echo -e "----------------------------"
echo "-> start compiling ..."
gcc -c myfind.c -std=c99
if [ $? -eq 0 ]
then
    echo "-> compile successfully !"
fi

echo "-> start  linking  ..."
gcc error.o pathalloc.o myfind.o -o myfind
if [ $? -eq 0 ]
then
    echo "-> linking successfully !"
fi
echo -e "----------------------------"


echo -e "\n$ TEST FOR QUESTION-1: ./myfind /"
./myfind /

echo -e "\n$ TEST FOR QUESTION-2: ./myfind / -comp apue.h"
./myfind / -comp apue.h

echo -e "\n$ TEST FOR QUESTION-3: ./myfind / -name apue.h error.o"
./myfind / -name apue.h error.o
