deps=(oh-my-zsh homestead pathogen vim-sensible vim-nerdtree vim-ctrlp zsh-syntax-highlighting)

_after() {
  for i in `ls dots`; do
    cp -i dots/$i ~/.$i
  done

  chsh -s /bin/zsh
}
