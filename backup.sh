#!/bin/bash

function selectDatebase(){
  case $1 in
    "mysql")
    mysqldump --user=$user --password=$password --host=$host $nameTable > $variable/backup$date.sql
;;
    "*") echo "Your $databases is incorrect"
esac    
    echo "Dump databases: $databases"
}

if [[ ! -e config.sh ]] ; then
  echo "You don't have config with parameters data"
  if [[ ! -e install.sh ]] ; then
    echo "You don't have scrypt install"
    exit 0;
  else 
    source install.sh
  fi
else
  source config.sh
fi

echo "Loading directory from copy"
if [[ ! -d $pathWithProject ]] ; then
  echo "Path is incorrect"
  exit 0;
fi

echo "Loading directory to copy"
if [[ ! -d "$pathToBackUp" ]]; then
  echo "Directory dosn't exist, it is created"
  bash -c "mkdir $pathToBackUp"
fi

date=`date +%Y_%m_%d`
variable=$(mktemp -d)

selectDatebase $databases

bash -c "cp -rf $pathWithProject $variable"

bash -c "tar -czf $pathToBackUp/$filename"_"$date.tar.gz $variable"

rm -rf $variable
echo "Done that created:  $pathToBackUp/$filename"_"$date.tar.gz"
