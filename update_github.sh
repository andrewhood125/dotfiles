for i in `ls dots`; do
  colordiff ~/.$i dots/$i
  cp -i dots/$i ~/.$i
done
