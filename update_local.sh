for i in `ls dots`; do
  colordiff dots/$i ~/.$i

  # Only prompt to overwrite if changes exist
  if [ $? -ne 0 ] ; then
    cp -i dots/$i ~/.$i
  fi
done
