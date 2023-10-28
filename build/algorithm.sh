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

PROJECT_PATH=~/project/AlgorithmDemo

# build
# cpp
cd ${PROJECT_PATH}/build/cpp || exit
cmake ${PROJECT_PATH}/src/cpp
make
# java
cd ${PROJECT_PATH}/build/java || exit
javac ${PROJECT_PATH}/src/java/StringMatch.java -d ${PROJECT_PATH}/bin/java

# run
echo "======CPP======"
${PROJECT_PATH}/bin/cpp/AlgorithmCPP
echo "======JAVA====="
cd ${PROJECT_PATH}/bin/java
java StringMatch
echo "==============="
