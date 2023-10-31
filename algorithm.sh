#!/bin/bash
#########################################################
# Function :build and run algorithm code                #
# Platform :All Linux Based Platform                    #
# Version  :1.0                                         #
# Date     :2023-10-28                                  #
# Author   :meyok                                       #
# Contact  :2553774545@qq.com                           #
# Company  :                                            #
#########################################################

PROJECT_PATH=$(pwd)

# build
# cpp
cd ${PROJECT_PATH}/cpp/build || exit
cmake ..
build
cd ${PROJECT_PATH}
# java
javac -cp ${PROJECT_PATH}/java/src ${PROJECT_PATH}/java/src/xyz/meyok/algorithm/Demo.java -d ${PROJECT_PATH}/java/target

# run
echo "======CPP======"
${PROJECT_PATH}/cpp/bin/Demo
echo "======JAVA====="
java -cp ${PROJECT_PATH}/java/target xyz.meyok.algorithm.Demo
echo "==============="

