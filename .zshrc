# -------------------------------
# 🧠 General Environment Setup
# -------------------------------
export PATH="/opt/homebrew/bin:$PATH"
export EDITOR="code"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# -------------------------------
# ⚙️ Zinit Plugin Manager (Official Setup)
# -------------------------------
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [[ ! -d $ZINIT_HOME ]]; then
  echo "⚠️ Zinit not found at $ZINIT_HOME — run the install script!"
else
  source "${ZINIT_HOME}/zinit.zsh"
  autoload -Uz _zinit
  (( ${+_comps} )) && _comps[zinit]=_zinit
fi

# -------------------------------
# 🎨 Powerlevel10k Theme
# -------------------------------
zinit light romkatv/powerlevel10k
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# -------------------------------
# 🔌 Productivity Plugins
# -------------------------------
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light djui/alias-tips
zinit light agkozak/zsh-z
eval "$(zoxide init zsh)"
eval "$(thefuck --alias)"

# -------------------------------
# 🐍 Python (pyenv + pipx)
# -------------------------------
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Uncomment if using pyenv-virtualenv:
# eval "$(pyenv virtualenv-init -)"

# -------------------------------
# 🟩 Node.js via NVM
# -------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"

# -------------------------------
# ☕ Java via Jenv
# -------------------------------
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# -------------------------------
# 🧢 Golang
# -------------------------------
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# -------------------------------
# 🐳 Docker Shortcuts
# -------------------------------
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dps="docker ps"
alias dimg="docker images"

# -------------------------------
# 🌱 Useful Aliases
# -------------------------------
alias ll="exa -lah"
alias gs="git status"
alias gc="git commit -m"
alias gl="git pull"
alias gp="git push"
alias ports="lsof -i -P -n | grep LISTEN"
alias jn="jupyter notebook"

# -------------------------------
# 🧪 Misc
# -------------------------------
autoload -Uz compinit && compinit
setopt no_beep
bindkey -e