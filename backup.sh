#!/bin/bash

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

bash -c "tar -cvzf $variable/$filename"_"$date.tar.gz $pathWithProject"

bash -c "cp $variable/$filename"_"$date.tar.gz $pathToBackUp"

rm -rf $variable
echo "Done that created:  $pathToBackUp/$filename"_"$date.tar.gz"
