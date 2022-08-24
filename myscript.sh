#chmod +x myscript.sh ==> this command change the mode of file to executable
#which bash ==> this command shows the where is bash file is located in the system
# ./myscript.sh ==> this command is use to run the file
#! /usr/bin/bash

#ECHO COMMAND
#echo hello world!

#VARIABLES
#Uppercase by convention
#Letters,numbers,underscores

#NAME='Jack'
#echo "My name is ${NAME}"

#USER INPUT

#read -p "enter your name:" NAME
#echo "Hello $NAME,nice to meet you"

#SIMPLE IF STATEMENT
#if [ "$NAME" == "Anil" ]
#then
#echo "your name is Anil"
#fi

#IF_ELSE
#if [ "$NAME" == "Anil" ]
#then
#echo "your name is Anil"
#else
#echo "your name is not Anil"
#fi

#ELSE_IF(elif)
#if [ "$NAME" == "Anil" ]
#then
 #   echo "your name is Anil"
#elif [ "$NAME" == "Jack" ]
#then
 #   echo "your name is jack "
#else
 #   echo "your name is not Anil or jack"
#fi

# COMPARISON
######
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
#######

#NUM1=3
#NUM2=5
#if [ "$NUM1" -gt "$NUM2" ]
#then
#echo "$NUM1" is greaterf than "$NUM2"
#else
#echo "$NUM1" is less than "$NUM2"
#fi

#FILE_CONTAINING

#####
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
#####

#FILE='test.txt'
#if [ -e "$FILE" ]
#then
#echo "$FILE exists"
#else
#echo "$FILE does not exists"
#fi

#CASE_STATEMENT
#read -p "Are you 21 or over? Y/N " ANSWER
#case "$ANSWER" in
#[yY] | [yY][eE][sS])
#echo "you can have a beer"
#;;
#   [nN] | [nN][oO])
#echo "sorry,no drinking"
#;;
#*)
#echo "please enter y/yes or n/no"
#;;
#esac

#SIMPLE_FOR_LOOP

#NAMES="Satish Kamal Aman Mark"
#for NAME in $NAMES
#do
#echo "hello $NAME"
#done

#FOR_LOOP_FOR_RENAME_FILE
#FILES=$(ls *.txt)
#NEW="new"
#for FILE in $FILES
#FILE is iteration veriable
#FILES is decleration variable
#do
#echo "renaming $FILE to new-$FILE"
#mv $FILE $NEW-$FILE
#done

#WHILE_LOOP _READ THRUGH A FILE LINE BY LINE
#LINE=1
#while read -r CURRENT_LINE 
#do
#echo "$LINE: $CURRENT_LINE"
#((LINE++))
#done <"./new-1.txt"

#FUNCTION

#function sayHello(){
 #   echo "hello world"
#}
#sayHello

#FUNCTION_WITH_PARAMS
function greet(){
    echo "Hello,I am $1 and I am $2"
    #positional parameters $1,$2 and so on
}
greet "SUJAN" "25"


#CREATE FOLDER AND WRITE TO A FILE
mkdir hello
touch "hello/world.txt"
echo "Hello world" >> "hello/world.txt"
echo "Created hello/world.txt"
