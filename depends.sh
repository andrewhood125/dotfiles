deps=(homestead vim-nerdcommenter vim-nerdtree vim-supertab vim-sensible vim-xoria256 vim-ctrlp zsh-syntax-highlighting)

_after() {
  for i in `ls dots`; do
    colordiff ~/.$i dots/$i 
    cp -i dots/$i ~/.$i
  done

  chsh -s /bin/zsh
}
