for i in `ls dots`; do
  colordiff ~/.$i dots/$i

  # Only prompt to overwrite if changes exist
  if [ $? -ne 0 ] ; then
    cp -i ~/.$i dots/$i;
  fi
done
