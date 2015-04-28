for i in `ls dots`; do
  colordiff dots/$i ~/.$i
  if [ $? -ne 0 ] ; then
    cp -i ~/.$i dots/$i;
  fi
done
