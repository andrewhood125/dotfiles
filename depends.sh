deps=(oh_my_zsh homestead janus janus_vim_airline janus_vim_autoformat janus_vim_blade janus_vim_emmet janus_vim_html5 janus_vim_surround zsh_syntax_highlighting)

_after() {
  for i in `ls dots`; do
    cp -i dots/$i ~/.$i
  done

  chsh -s /bin/zsh
}
