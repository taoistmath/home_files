export PATH="/usr/local/bin:$PATH"
export M2_HOME=/Users/gfogelberg/Documents/apache-maven-3.3.3
export M2=$M2_HOME/bin
export PATH=/usr/local/php5/bin:$M2_HOME/bin:$JAVA_HOME:$PATH
export EDITOR=vim

source ~/.profile
export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
