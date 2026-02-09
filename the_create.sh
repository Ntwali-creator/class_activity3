#!/bin/bash

dir=students_directory



if [ -d "$dir" ]; then
    echo "Directory exists: $dir"
else
    mkdir -p "$dir" 

echo "Created directory: $dir"
fi


for i in 1 2 3; do
  file="$dir/cohort-$i.txt"
  if [ ! -f "$file" ]; then
    touch "$file"
    echo "Created file: $file"
  fi
done

names1="Amina Hassan
Brian Otieno
Cynthia Wanjiku"

names2="David Mwangi
Eunice Njeri
Farah Ali"

names3="George Kiptoo
Hannah Wambui
Ibrahim Noor"

echo "$names1" > "$dir/cohort-1.txt"
echo "$names2" > "$dir/cohort-2.txt"
echo "$names3" > "$dir/cohort-3.txt"


echo
echo "=== Contents of cohort files ==="
for i in 1 2 3; do
  file="$dir/cohort-$i.txt"
  echo
  echo "--- $file ---"
  cat "$file"
done


