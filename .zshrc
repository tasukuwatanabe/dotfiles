# .zshrc

##############
### Export ###
##############

# Terminalの出力を変更
export PS1="%c $ "

# Go
export PATH="$(go env GOPATH)/bin:$PATH"

# aqua
export PATH="$(aqua root-dir)/bin:$PATH"

#####################
### External Tool ###
#####################

# mise
eval "$(mise activate zsh)"

###############
### Aliases ###
###############

# クリア
alias cl='clear'

# 履歴表示
alias hi='history'

# ファイル開く
alias c.='code .'
alias c='code'
alias o.='open .'
alias o='open'

# 親ディレクトリに移動
alias ..='cd ..'

# 隠しファイルも含めて全表示
alias la="ls -a"

# 権限・隠しファイルを全表示
alias ll='ls -la'

# git
alias ga='git add'
alias ga.='git add .'
alias gcm='git commit -m'
alias gps='git push'
alias gpso='git push origin'
alias gpsom='git push origin main'
alias gplo='git pull origin'
alias gplom='git pull origin main'
alias gpluom='git push -u origin main'
alias gpsfo='git push -f origin'
alias gpsoh='git push origin HEAD'
alias gpsfoh='git push -f origin HEAD'
alias gf='git fetch'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gchm='git checkout main'
alias gst='git status'
alias gsh='git stash'
alias gshu='git stash -u'
alias gshp='git stash pop'
alias gb='git branch'
alias gbd='git branch -D'
alias gbc='git branch --contains'
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias gd='git diff'
alias grsh='git reset --soft HEAD^'

# Copilot CLI
alias cop='copilot'
alias copcon='copilot --continue'
alias copres='copilot --resume'

######################
### Local Settings ###
######################

# Load local settings if exists
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi
