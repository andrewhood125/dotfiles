deps=(homestead vim-nerdcommenter vim-ruby vim-syntastic vim-nerdtree vim-supertab vim-sensible vim-xoria256 vim-ctrlp zsh-syntax-highlighting)

_after() {
  for i in `ls dots`; do
    colordiff ~/.$i dots/$i 

    # Only prompt if there is a diff in files
    if [ "$?" -eq 1 ] ; then
      cp -i dots/$i ~/.$i
    fi

  done

  if [ "$SHELL" != "/bin/zsh" ] ; then
    chsh -s /bin/zsh
  fi
}
