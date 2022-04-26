export PATH="/usr/local/opt/python/libexec/bin:${ZDOTDIR:-$HOME}/.zprofile:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

autoload -Uz promptinit
promptinit
prompt steeef

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

cd ~/Development/yagd/web
