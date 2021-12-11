https://stackoverflow.com/questions/20205653/regex-to-find-numbers-with-unique-digits


#VALEUR=12345
#if [[ $VALEUR =~ [0-9]+ ]]; then echo "Valeur entière positive"; else echo "ko"; fi

#VALEUR=123456789
#if [[ $VALEUR =~ ^(?!.*(.).*\1)\d{9}$ ]]; then echo "1"; else echo "0"; fi

#!/bin/bash

VAR="1234a56789"


RESULT=$( echo $VAR | egrep ^[a-zA-Z]+?=[\.\/a-zA-Z0-9_-]+?$ )

if [ -z $RESULT ]; then
        echo bad
else
        echo good
fi
