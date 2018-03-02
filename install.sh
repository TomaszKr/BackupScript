#!/bin/bash
source config.sh.params

newConfig=()
IFS='=' eval 'split=(${config[@]})'

for ix in ${!split[*]}
do 

        if [[ $((ix%2)) != "1" ]]; then
          printf "   %s\n" "${split[$ix]}" "${split[$ix+1]}"
        else
          read var
          if [$var == ""]; then
            var="${split[$ix]}"
          fi
          newElement=$(echo "${split[$ix-1]}=\"$var\"")
          newConfig[$ix]=$newElement 
        fi
done

if [[ -f config.sh ]]; then
  echo "Delete last version"
  rm -f config.sh
fi

printf "#!/bin/bash\n" >> config.sh
printf "%s\n" ${newConfig[@]} >> config.sh

echo "Create config.sh"
  