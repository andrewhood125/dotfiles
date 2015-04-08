for i in `ls dots`; do
  colordiff dots/$i ~/.$i
  cp -i ~/.$i dots/$i;
done
