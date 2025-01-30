n=0
i=$(echo $(pwd) | cut -d. -f1)
for file in *.jpg
do 
  mv "$file" "$i""${n}".jpg
  n=$((n+1))
done
