#! /bin/bash

read -p "name of the script: " name
touch ${name}.sh
echo "#! /bin/bash" >> ${name}.sh
