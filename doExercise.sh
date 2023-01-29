# ===================================================================================================
# Script to create files to solve a problem in a particular language.
# ===================================================================================================
#!/bin/bash

# Templates with code snippets folder
TEMP_FOLDER="./Templates"

if [ $# -ne 2 ]; then
  echo "======================================================================================"
  echo "Usage:> $0 <problem_name> <language>"
  echo "--------------------------------------------------------------------------------------"
  echo "<language>"
  echo "1) C++"
  echo "2) Java"
  echo "3) Python"
  echo "======================================================================================"
  exit
else
  PROBLEM_NAME=$1
  LANGUAGE_NAME=$2
  echo "./$PROBLEM_NAME"
  if [ $LANGUAGE_NAME == "C++" ]; then
    mkdir -p "./$PROBLEM_NAME"
    cp "$TEMP_FOLDER/main.cpp" "./$PROBLEM_NAME"
    cp "$TEMP_FOLDER/Makefile" "./$PROBLEM_NAME"
    cp "$TEMP_FOLDER/in" "./$PROBLEM_NAME"
  elif [ $LANGUAGE_NAME == "Java" ]; then
    mkdir -p "./$LANGUAGE_NAME/$PROBLEM_NAME"
    cp "$TEMP_FOLDER/main.java" "./$LANGUAGE_NAME/$PROBLEM_NAME"
    cp "$TEMP_FOLDER/in" "./$LANGUAGE_NAME/$PROBLEM_NAME"
  elif [ $LANGUAGE_NAME == "Python" ]; then
    mkdir -p "./$LANGUAGE_NAME/$PROBLEM_NAME"
    cp "$TEMP_FOLDER/main.py" "./$LANGUAGE_NAME/$PROBLEM_NAME"
    cp "$TEMP_FOLDER/in" "./$LANGUAGE_NAME/$PROBLEM_NAME"
  fi
fi
