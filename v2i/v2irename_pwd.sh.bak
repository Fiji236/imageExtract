main_dir=$(pwd)
for sub_dir in "$main_dir"/*
do
  cd "$sub_dir" || continue
  n=0
  i=$(echo $(pwd) | cut -d. -f1)
  for file in *.jpg
  do 
    mv "$file" "$i""${n}".jpg
    n=$((n+1))
  done
done
