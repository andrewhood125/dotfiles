export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="ys"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gem history-substring-search git ag)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

source "${HOME}/.aliases"

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/bin"
export PATH="/usr/local/sbin:$PATH"

# Use ag to ignore some files by default for FZF searching.
export FZF_DEFAULT_COMMAND='ag --hidden -g .'
