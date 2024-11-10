#!/bin/bash

INPUT_FILE="dffef075-ec69-4eea-a658-3761b6fbd16f.snbt"
JAR_FILE="server.jar"
OUTPUT_FILE="dffef075-ec69-4eea-a658-3761b6fbd16f.dat"

if [ ! -f "${INPUT_FILE}" ]; then
    echo "${INPUT_FILE} does not exist! Cannot continue!"
    exit 1
fi
if [ ! -f "${JAR_FILE}" ]; then
    echo "${JAR_FILE} does not exist! Cannot continue!"
    exit 1
fi

mkdir -p in/
cp ${INPUT_FILE} in/${INPUT_FILE}
# java -cp ${JAR_FILE} net.minecraft.data.Main --client --input in/
java -DbundlerMainClass="net.minecraft.data.Main" -jar ${JAR_FILE} --server --input in/