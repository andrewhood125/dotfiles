for i in `ls dots`; do
  colordiff ~/.$i dots/$i

  # Only prompt to overwrite if changes exist
  if [ $? -ne 0 ] ; then
    cp -i dots/$i ~/.$i
  fi
done
